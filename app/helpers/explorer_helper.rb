module ExplorerHelper
  def explorer_textarea
    "<textarea cols=60 rows=20>#{ExplorerExamples.example[:query]}</textarea>"
  end
end
