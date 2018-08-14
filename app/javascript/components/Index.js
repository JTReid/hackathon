import React from "react"
import PropTypes from "prop-types"
class Index extends React.Component {
  render () {
    return (
      <React.Fragment>
        Welcome {this.props.greeting}
      </React.Fragment>
    );
  }
}

Index.propTypes = {
  greeting: PropTypes.string
};
export default Index