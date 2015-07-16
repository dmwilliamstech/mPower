module ApplicationHelper

class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language)
    CodeRay.scan(code, language).div
  end
end

def markdown(text)
  coderayified = CodeRayify.new(:filter_html => true, 
                                :hard_wrap => true)
  options = {
    :fenced_code_blocks => true,
    :no_intra_emphasis => true,
    :autolink => true,
    :lax_html_blocks => true,
  }
  markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
  markdown_to_html.render(text).html_safe
end

def retina_image_tag(default_name, options={})
    retina_name = default_name.gsub(%r{\.\w+$}, '@2x\0')
    image_tag(default_name, options.merge('data-interchange' => "[#{asset_path(retina_name)}, (retina)]"))
  end
end
