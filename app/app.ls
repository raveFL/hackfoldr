# Declare app level module which depends on filters, and services

angular.module('scroll', []).value('$anchorScroll', angular.noop)

angular.module \app <[ui partials app.controllers ui.state ui.bootstrap]>
.config <[$stateProvider $urlRouterProvider $locationProvider]> ++ ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $stateProvider
    .state 'about' do
      url: '/about'
      templateUrl: '/partials/about.html'
    .state 'hack' do
      url: '/{hackId}'
      templateUrl: '/partials/hack.html'
      controller: \HackFolderCtrl
    .state 'hack.doc' do
      url: '/{docId}'

  $urlRouterProvider
    .otherwise('/g0v-hackath3n')

  $locationProvider.html5Mode true

.run <[$rootScope $state $stateParams]> ++ ($rootScope, $state, $stateParams) ->
  $rootScope.$state = $state
  $rootScope.$stateParam = $stateParams
