var app = angular.module('beerApp', []);

app.controller('formControllerBeer', function ($scope, $http) {

    $scope.formData = {};
    $scope.answer = {};

    $scope.formData.getAdvice = false;
    $scope.formData.getBeer = false;

    $scope.resetButtons = function () {
        $scope.formData.getAdvice = false;
        $scope.formData.getBeer = false;
    }

    $scope.submit = function (form, url) {
        formSubmit(form, url, $http, $scope);
    }
});

app.controller('formControllerContact', function ($scope, $http) {

    $scope.formData = {};
    $scope.answer = {};
    
    $scope.formData.sendContactMessage = false;

    $scope.resetButtons = function () {
        $scope.formData.sendContactMessage = false;
    }

    $scope.submit = function (form, url) {
        formSubmit(form, url, $http, $scope);
    }
});

function formSubmit(form, url, $http, $scope) {

    if (!form.$valid) {
        return false;
    }

    $http({
        url: url,
        method: "POST",
        data: $.param($scope.formData),
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    }).then(function successCallback(response) {
        // this callback will be called asynchronously
        // when the response is available
        $scope.answer.message = response.data.Message;
        $scope.answer.title = response.data.Title;

        if ($scope.answer.message !== undefined && $scope.answer.message.length > 0)
        {
            $('#myModal').modal('show');
        }
        
    }, function errorCallback(response) {
        // called asynchronously if an error occurs
        // or server returns response with an error status.
        $scope.error = response.statusText;
    });

    $scope.resetButtons();

    return true;
}