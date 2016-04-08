var matrix =  [[0, 0, 0, 0],
              [0, 1, 0, 0],
              [0, 0, 0, 0],
              [0, 0, 0, 0]];

window.imageBlur = function(array){
  for(var i = 0; i < array.length; i++){
    for(var j = 0; j < array[i].length; j++){
      if(array[i][j] === 1){
        array[i][j-1] = 1;
        array[i][j+1] = 1;
        array[i-1][j] = 1;
        array[i+1][j] = 1;
      }
    }
  }
  return array;
};

var testing = window.imageBlur(matrix);
console.log(testing);
