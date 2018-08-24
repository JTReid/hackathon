import React from 'react';
import PropTypes from 'prop-types';
import { hot } from 'react-hot-loader';

/**
 * Root component of app
 */
class App extends React.Component {
  render() {
    const { greeting } = this.props;
    return (
      <div data-testid="app">
        <h4>Welcome {greeting}!</h4>
      </div>
    );
  }
}

App.propTypes = {
  greeting: PropTypes.string.isRequired,
};

export default hot(module)(App);
