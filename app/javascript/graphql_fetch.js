async function fetchGraphQL(graphqlQuery) {
  return await fetch('/graphql', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content,
    },
    body: JSON.stringify({ query: graphqlQuery }),
  });
}

export { fetchGraphQL };
