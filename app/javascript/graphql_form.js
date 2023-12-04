import { buildGraphQLQuery } from './graphql_queries';
import { fetchGraphQL } from './graphql_fetch';
import { parseResponse } from './graphql_parse';
import { updateUI } from './ui_updater';


document.addEventListener('DOMContentLoaded', () => {
  const searchForm = document.getElementById('search-form');
  const graphqlResponseContainer = document.getElementById('graphql-response');

  if (searchForm && graphqlResponseContainer) {
    searchForm.addEventListener('submit', handleSearch);
  }

  async function handleSearch(event) {
    event.preventDefault();

    const formData = new FormData(searchForm);
    const searchParam = formData.get('search_param');
    const graphqlQuery = buildGraphQLQuery(searchParam);

    try {
      const response = await fetchGraphQL(graphqlQuery);
      const responseData = await parseResponse(response);

      // Update the UI with responseData
      updateUI(graphqlResponseContainer, response.headers.get('content-type'), responseData);

    } catch (error) {
      console.error(error);
    }
  }
});
