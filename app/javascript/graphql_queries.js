function buildGraphQLQuery(searchParam) {
  return `
    query {
      userDataAndRepos(query: "${searchParam}") {
        owner {
          name
        }
        repoNames {
          results {
            name
          }
        }
      }
    }
  `;
}

export { buildGraphQLQuery };