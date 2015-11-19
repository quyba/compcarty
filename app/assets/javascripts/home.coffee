# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
compcarty = angular.module('compcarty',[
  'templates',
  'ngRoute',
  'controllers',
])

compcarty.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'CompcartyController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("CompcartyController", [ '$scope',
  ($scope)->
])

compcarty.controller 'CarCtrl', ($scope, $http) ->
  $http.get('/data.json').success (data) ->
    $scope.cars = data
    return
  return


# CarCtrl = ($scope, $http) ->
#   $scope.car = []
#   $scope.loadCar = ->
#     httpRequest = $http(
#       method: 'POST'
#       url: '/echo/json/'
#       data: $http.get('/data.json')).success((data, status) ->
#       $scope.car = data
#       return
#     )
#     return
#
#   return



# countryApp.controller('CountryCtrl', function ($scope, $http) {
#    $http.get('countries.json').success(function(data) {
#        $scope.countries = data;
#    });
# });
