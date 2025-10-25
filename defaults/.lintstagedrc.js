export default {
  '**/*.{ts,tsx}': ['eslint --cache --fix', 'prettier --write', () => 'tsc'],
}
