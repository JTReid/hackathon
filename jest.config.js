module.exports = {
  setupFilesAfterEnv: [
    '@testing-library/react/cleanup-after-each',
    '@testing-library/jest-dom/extend-expect',
  ],
  testPathIgnorePatterns: ['<rootDir>/node_modules/', '<rootDir>/config'],
  coverageThreshold: {
    global: {
      branches: 40,
      functions: 40,
    },
  },
};
