module ExecuteQueryHelper
  def execute_query(query)
    response = GithubRepoSearcherSchema.execute(query)
    JSON.parse(response.to_json)
  end
end
