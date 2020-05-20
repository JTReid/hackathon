import React, { useState } from 'react';
import PropTypes from 'prop-types';

/**
 * Root component of app
 */
const App = ({ name }) => {
  const [greeting, setGreeting] = useState('Welcome');
  const [value, setValue] = useState('');

  return (
    <div data-testid="app">
      <input value={value} onChange={e => setValue(e.target.value)} />
      <h4>
        {greeting}, {name}!
      </h4>
      <button
        data-testid="change-message-button"
        type="button"
        onClick={() => setGreeting('Goodbye')}
      >
        Change Message
      </button>
    </div>
  );
};

App.propTypes = {
  name: PropTypes.string.isRequired,
};

export default App;
