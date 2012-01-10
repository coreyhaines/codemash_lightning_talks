module ProposalsHelper
  def twitter_handle_as_link(handle)
    return "no twitter handle" if handle.blank?
    handle = handle[1..-1] if handle.start_with?("@")
    link_to "@#{handle}", "http://twitter.com/#{handle}"
  end
end
