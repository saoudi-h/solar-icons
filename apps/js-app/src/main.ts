import * as AllExports from '@solar-icons/js';

const { createIcons, ...Icons } = AllExports;
const allIconNames = Object.keys(Icons);

// Helper to convert PascalCase to kebab-case
const toKebabCase = (str: string) => 
  str.replace(/([A-Z]+)([A-Z][a-z])/g, '$1-$2').replace(/([a-z\d])([A-Z])/g, '$1-$2').toLowerCase();

// State
let currentStyle = 'LineDuotone';
let searchQuery = '';
let currentPage = 1;
const itemsPerPage = 100;

// Elements
const gridEl = document.getElementById('icon-grid') as HTMLDivElement;
const styleSelect = document.getElementById('style-select') as HTMLSelectElement;
const searchInput = document.getElementById('search-input') as HTMLInputElement;
const prevBtn = document.getElementById('prev-page') as HTMLButtonElement;
const nextBtn = document.getElementById('next-page') as HTMLButtonElement;
const pageInfo = document.getElementById('page-info') as HTMLSpanElement;
const countInfo = document.getElementById('icon-count') as HTMLDivElement;
const currentStyleTitle = document.getElementById('current-style-title') as HTMLHeadingElement;

// CSS Variable inputs
const sizeInput = document.getElementById('size-input') as HTMLInputElement;
const colorInput = document.getElementById('color-input') as HTMLInputElement;
const strokeInput = document.getElementById('stroke-input') as HTMLInputElement;
const duotoneColorInput = document.getElementById('duotone-color-input') as HTMLInputElement;
const opacityInput = document.getElementById('opacity-input') as HTMLInputElement;
const bgColorInput = document.getElementById('bg-color-input') as HTMLInputElement;

const updateCSSVar = (name: string, value: string, suffix = '', idOverride?: string) => {
  document.documentElement.style.setProperty(name, value + suffix);
  const valId = idOverride || `${name.replace('--', '').replace('icon-', '')}-val`;
  const valDisplay = document.getElementById(valId);
  if (valDisplay) valDisplay.textContent = value + suffix;
};

// Listeners for variables
sizeInput.addEventListener('input', (e) => updateCSSVar('--icon-size', (e.target as HTMLInputElement).value, 'px', 'size-val'));
colorInput.addEventListener('input', (e) => updateCSSVar('--icon-color', (e.target as HTMLInputElement).value));
strokeInput.addEventListener('input', (e) => updateCSSVar('--icon-stroke-width', (e.target as HTMLInputElement).value, '', 'stroke-val'));
duotoneColorInput.addEventListener('input', (e) => updateCSSVar('--solar-secondary-color', (e.target as HTMLInputElement).value));
opacityInput.addEventListener('input', (e) => updateCSSVar('--solar-secondary-opacity', (e.target as HTMLInputElement).value, '', 'opacity-val'));
bgColorInput.addEventListener('input', (e) => updateCSSVar('--bg-color', (e.target as HTMLInputElement).value));

// Rendering logic
function renderIcons() {
  let filtered = allIconNames;

  if (currentStyle !== 'All') {
    filtered = filtered.filter(name => name.endsWith(`${currentStyle}Icon`));
  }

  if (searchQuery) {
    const q = searchQuery.toLowerCase();
    filtered = filtered.filter(name => name.toLowerCase().includes(q));
  }

  const totalPages = Math.ceil(filtered.length / itemsPerPage) || 1;
  if (currentPage > totalPages) currentPage = totalPages;

  const start = (currentPage - 1) * itemsPerPage;
  const pageIcons = filtered.slice(start, start + itemsPerPage);

  countInfo.textContent = `${filtered.length} icons found`;
  pageInfo.textContent = `Page ${currentPage} of ${totalPages}`;
  prevBtn.disabled = currentPage === 1;
  nextBtn.disabled = currentPage === totalPages;

  // Build HTML
  gridEl.innerHTML = pageIcons.map(name => {
    // Determine the kebab name without 'Icon' suffix
    const baseName = name.replace(/Icon$/, '');
    const kebab = toKebabCase(baseName);
    
    return `
      <div class="icon-box" title="${name}">
        <i data-solar="${kebab}"></i>
        <div class="icon-name">${baseName}</div>
      </div>
    `;
  }).join('');

  // We need to pass the icons object to createIcons. 
  // It only needs the ones present in the page, but passing all is fine.
  createIcons({
    icons: Icons
  });
}

// Event Listeners
styleSelect.addEventListener('change', (e) => {
  currentStyle = (e.target as HTMLSelectElement).value;
  currentStyleTitle.textContent = styleSelect.options[styleSelect.selectedIndex].text;
  currentPage = 1;
  renderIcons();
});

searchInput.addEventListener('input', (e) => {
  searchQuery = (e.target as HTMLInputElement).value;
  currentPage = 1;
  renderIcons();
});

prevBtn.addEventListener('click', () => {
  if (currentPage > 1) {
    currentPage--;
    renderIcons();
  }
});

nextBtn.addEventListener('click', () => {
  currentPage++;
  renderIcons();
});

// Initial render
renderIcons();
