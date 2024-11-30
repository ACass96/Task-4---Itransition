document.getElementById('applyFilters').addEventListener('click', () => {
    const searchValue = document.getElementById('searchInput').value.toLowerCase();
    const statusValue = document.getElementById('statusFilter').value;
  
    // Obtén todas las filas de la tabla
    const rows = document.querySelectorAll('#usersTable tbody tr');
  
    rows.forEach(row => {
      const name = row.querySelector('.name').innerText.toLowerCase();
      const email = row.querySelector('.email').innerText.toLowerCase();
      const status = row.querySelector('.status').innerText.toLowerCase();
  
      // Verifica si cumple con los filtros
      const matchesSearch = name.includes(searchValue) || email.includes(searchValue);
      const matchesStatus = statusValue === '' || status === statusValue;
  
      // Muestra/oculta la fila según los filtros
      row.style.display = matchesSearch && matchesStatus ? '' : 'none';
    });s
  });