// Плагины
var gulp = require('gulp');
    sass = require('gulp-sass');
    sourcemaps = require('gulp-sourcemaps');
    watch = require('gulp-watch');
    del = require('del');
    autoprefixer = require('gulp-autoprefixer');
    ftp = require( 'vinyl-ftp');
    uglify = require('gulp-uglify');
    gutil = require('gulp-util');


// ****************** CLEAN
//
gulp.task('clean-css', function(cb) {
    del(['./catalog/view/theme/default/stylesheet/dist/'], cb)
});
// ****************** SASS
//
gulp.task('sass-dev', function() {
    return gulp.src('./catalog/view/theme/default/stylesheet/source/**/*.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({outputStyle: 'expanded'}))
        .pipe(autoprefixer())
        .pipe(sourcemaps.write())
        .pipe(gulp.dest('./catalog/view/theme/default/stylesheet/dist/'));
});

gulp.task('sass-production', function() {
    return gulp.src('./catalog/view/theme/default/stylesheet/source/**/*.scss')
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(autoprefixer())
        .pipe(gulp.dest('./catalog/view/theme/default/stylesheet/dist/'));
});

// ****************** JS MIN
gulp.task('js-min', function(){
    return gulp.src('./catalog/view/javascript/src/*.js')
        .pipe(uglify());
    return gulp.src('./catalog/view/javascript/dist/*.js')
});


// ****************** FTP deploy
gulp.task( 'deploy', function() {

    var conn = ftp.create({
        host: 'reclamar.ftp.ukraine.com.ua',
        user: 'reclamar_mao',
        password: '464jo4pc',
        parallel: 1
    });

    var globs = [
        'catalog/view/theme/default/stylesheet/dist/mao.css'
    ];

    return gulp.src( globs, {base: './catalog/view/theme/default/stylesheet/dist/', buffer: false} )
        .pipe( conn.dest( '/catalog/view/theme/default/stylesheet/dist/' ) );
});


// ****************** WATCH
//
gulp.task('watch', function() {
    gulp.watch('./catalog/view/theme/default/stylesheet/source/**/**/**/*.scss', ['sass-production', 'deploy']);
    gulp.watch('./catalog/view/theme/default/stylesheet/dist/**/*.css', ['deploy']);
    gulp.watch('./src/js/*.js', ['default-js']);
});

// default
gulp.task('default',['sass-production'], function() {
    gulp.start('deploy');
});