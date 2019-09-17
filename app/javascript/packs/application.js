/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// Support component names relative to this directory:

/**
 * Do NOT edit code directly in this file unless you have a specific reason to do so
 *
 * Javascript that is intended to run on all pages should be set in /src/index.js
 * and modules within the 'src' directory
 *
 */
import '../src';
import '../stylesheets/App.scss';

const componentRequireContext = require.context('components', true);
const ReactRailsUJS = require('react_ujs');

ReactRailsUJS.useContext(componentRequireContext);
