async function parseResponse(response) {
  if (!response.ok) {
    throw new Error(`HTTP error! Status: ${response.status}\n ${response.json()}`);
  }

  return response.headers.get('content-type').includes('application/json') ? await response.json() : await response.text();
}

export { parseResponse };