template = require 'views/templates/about_page'
PageView = require 'views/base/page_view'

module.exports = class AboutPageView extends PageView
  template: template
  className: 'about-page'
  autoRender: true
