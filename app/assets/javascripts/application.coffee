# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
# vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file. JavaScript code in this file should be added after the last require_* statement.
#
# Read Sprockets README (https:#github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require rails-ujs
#= require jquery
#= require jquery.turbolinks
#= require turbolinks
#= require bootstrap
#= require bootstrap-sprockets
#= require bootstrap-fileinput
#= require bootstrap-fileinput/locales/ja
#= require moment
#= require fullcalendar
#= require moment/locale/ja
#= require cocoon
#= require turbolinks
#= require_tree .

# こちらはページ遷移する度に呼ばれる（初回ページ読み込み時も含む）
$(document).on 'turbolinks:load', ->

  #
  # File Input
  #
  $('input[type="file"]').fileinput
    showUpload: false
    showPreview: true
    allowedPreviewMimeTypes: false
    previewFileType: 'image'
    language: 'ja'

  #
  # Sidebar
  #
  $('#sidebarCollapse').on 'click', ->
    $('#sidebar').toggleClass 'active'
    $(this).toggleClass 'active'
  #
  # Preview
  #
  new Vue
    el: '#editor'
    data:
      input: ''
    filters:
      marked: marked
  return

  #
  # Image
  #
  $ ->
    $('#report-image').on 'cocoon:after-insert', ->
      $(this).find('.tag-child').bind 'cocoon:after-insert', ->
        $(this).remove()
        return
      return
    return

  #
  # calendar
  #
  $('#calendar').fullCalendar()
