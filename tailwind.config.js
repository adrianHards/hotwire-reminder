const plugin = require('tailwindcss/plugin');

module.exports = {

  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

  plugins: [
    require('@tailwindcss/forms')
  ],

  theme: {
    extend: {
      fontFamily: {
        'inter': ['Inter', 'sans-serif']
      },
    },
  },

  variants: {
    outline: ["focus"]
  },
};