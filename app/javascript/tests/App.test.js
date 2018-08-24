import React from 'react';
import { render, cleanup } from 'react-testing-library';
import 'jest-dom/extend-expect';
import App from '../components/App';

afterEach(cleanup);

test('Should have text content', () => {
  // FIXME: implement real tests
  const greeting = 'Test Greeting';
  const { getByText, getByTestId, container, debug } = render(<App greeting={greeting} />);
  /**
   * Use debug() to log out the current state of the dom
   */
  const childTagNames = Array.from(getByTestId('app').children).map(element => element.tagName);
  expect(container).toHaveTextContent(greeting);
  expect(childTagNames.includes('H4')).toEqual(true);
});
