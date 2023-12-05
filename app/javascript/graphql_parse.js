async function parseResponse(response) {
  if (!response.ok) {
    const errorResponse = await response.json();
    throw new Error(`HTTP error! Status: ${response.status}\n ${JSON.stringify(errorResponse)}`);
  }

  return response.headers.get('content-type').includes('application/json') ? await response.json() : await response.text();
}

export { parseResponse };
