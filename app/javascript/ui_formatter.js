
function formatJsonData(userData) {
  const ownerName = userData.owner[0].name;
  const repoList = userData.repoNames[0].results.map(repo => `${repo.name}`).join('<br>');

  if (ownerName) {
    return `
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Name: ${ownerName}</h5>
          <h6 class="card-subtitle mb-2 text-muted">Repo list:</h6>
          <ul class="list-group">
            ${userData.repoNames[0].results.map(repo => `<li class="list-group-item">${repo.name}</li>`).join('')}
          </ul>
        </div>
      </div>
    `;
  } else {
    return '<p class="text-md-center">User with this login does not exist.</p>';
  }
}

export { formatJsonData };