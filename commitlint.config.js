/**
 * Commit message linting — Conventional Commits.
 * https://www.conventionalcommits.org/  ·  @commitlint/config-conventional
 *
 * Examples:
 *   feat: add Chapter 26 on supply-chain attacks
 *   fix(pt-BR): correct broken anchor in HANDBOOK
 *   docs: clarify lab safety rules
 *   ci: pin Pages actions to commit SHAs
 */
module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // Optional scope; when present, allow our common scopes (and any other).
    'scope-enum': [
      1,
      'always',
      ['en-US', 'pt-BR', 'handbook', 'roadmap', 'labs', 'refs', 'ci', 'docs', 'deps'],
    ],
  },
};
