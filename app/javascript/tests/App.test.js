import React from 'react';
import { render, fireEvent } from '@testing-library/react';
import App from '../components/App';

const sampleName = 'World';

const setup = () => {
  const { getByTestId, container } = render(<App name={sampleName} />);

  return {
    container,
    button: getByTestId('change-message-button'),
  };
};

test('Should display name prop', () => {
  // FIXME: implement real tests
  const { container } = setup();

  expect(container).toHaveTextContent(sampleName);
});

test('Should change message on button click', () => {
  const { container, button } = setup();

  expect(container).toHaveTextContent('Welcome');

  fireEvent.click(button);

  expect(container).toHaveTextContent('Goodbye');
});
