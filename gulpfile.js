const gulp = require('gulp');
const elm = require('gulp-elm');


gulp.task('elm', function(){
  return gulp.src('src/Main.elm')
    .pipe(elm({ optimize: true }))
    .pipe(gulp.dest('docs/'));
});