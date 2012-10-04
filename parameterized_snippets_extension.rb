class ParameterizedSnippetsExtension < Radiant::Extension

  def activate
    Page.send :include, ParameterizedSnippets::PageExt
  end

  def deactivate
  end

end

