import {formatJsonData} from './ui_formatter'

function updateUI(container, contentType, data) {
  if (contentType.includes('application/json')) {
    // If JSON, format and display the data
    const formattedData = formatJsonData(data.data.userDataAndRepos[0]);
    container.innerHTML = formattedData;
  } else {
    container.innerHTML = data;
  }
}

export { updateUI };
