async function parseResponse(response) {
  if (!response.ok) {
    throw new Error(`HTTP error! Status: ${response.status}\n ${JSON.stringify(response.getEntity())}`);
  }

  return response.headers.get('content-type').includes('application/json') ? await response.json() : await response.text();
}

export { parseResponse };
