(() => {
  const input = document.getElementById('search');
  const cards = [...document.querySelectorAll('.card')];
  const counter = document.getElementById('counter');
  const empty = document.getElementById('empty');
  const normalize = value => value.toLocaleLowerCase('tr-TR').normalize('NFD').replace(/[\u0300-\u036f]/g, '');
  const update = () => {
    const query = normalize(input.value.trim());
    let shown = 0;
    cards.forEach(card => {
      const match = normalize(card.textContent + ' ' + (card.dataset.search || '')).includes(query);
      card.hidden = !match;
      if (match) shown++;
    });
    counter.textContent = `${shown} kaynak`;
    empty.hidden = shown !== 0;
  };
  input.addEventListener('input', update);
  update();
})();
