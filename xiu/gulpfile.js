var gulp = require('gulp');
const htmlmin=require('gulp-htmlmin')       //压缩html
const cleanCss= require('gulp-clean-css')    //压缩css
const jsUglify = require('gulp-uglify');      //压缩js
const imagemin = require("gulp-imagemin");  //压缩图片
const pump = require("pump");               //pump() 泵
const babel = require("gulp-babel");        //ES5-ES6


//说明   type：文件类型 src：原目录路径   dest：目标路径   Iscompress:是否压缩（只有JS有这属性）
List=[
    {type:'html',   src:['./src1/html/*.html'],                  dest:'./dist/html'},
    {type:'html',   src:['./src1/*.html'],                       dest:'./dist'},
    {type:'css',    src:['./src1/css/*.css'],                    dest:'./dist/css'},
    {type:'js',     src:['./src1/lib/*.js'],                     dest:'./dist/lib',       Iscompress:true},
    {type:'js',     src:['./src1/js/*.js'],                      dest:'./dist/js',        Iscompress:true},
    {type:'images', src:["./src1/img/*.png","./src/img/*.jpg"],  dest:'./dist/img'},
    {type:'images2', src:["./src1/img/*.jpg"],                     dest:'./dist/img'},
    {type:'images3', src:["./src1/img/*.gif"],                     dest:'./dist/img'},

]

// html 压缩
function html(taskName,src,dest)
{
    gulp.task(taskName,function(){
        return gulp.src(src)
            .pipe(htmlmin({ collapseWhitespace: true }))
            .pipe(gulp.dest(dest))
    })
}
// css压缩
function css(taskName,src,dest)
{
    gulp.task(taskName,function(){
        return gulp.src(src)
            .pipe(cleanCss())
            .pipe(gulp.dest(dest))
    })
}
// js转es5压缩
function js(taskName,src,dest,Iscompress)
{
    if(Iscompress)
    {
        gulp.task(taskName,function(){
            return gulp.src(src)
                .pipe(babel({
                    presets: ['@babel/env']
                }))
                .pipe(jsUglify())
                .pipe(gulp.dest(dest))
        })
    }
    else
    {
        gulp.task(taskName,function(){
            return gulp.src(src)
                .pipe(gulp.dest(dest))
        })
    }

}
// 图片压缩
function images(taskNamem,src,dest)
{
    gulp.task(taskName,function(){
        return pump([
            gulp.src(src),
            imagemin(),
            gulp.dest(dest)
        ])
    })
}

function images2(taskNamem,src,dest)
{
    gulp.task(taskName,function(){
        return pump([
            gulp.src(src),
            imagemin(),
            gulp.dest(dest)
        ])
    })
}
function images3(taskNamem,src,dest)
{
    gulp.task(taskName,function(){
        return pump([
            gulp.src(src),
            imagemin(),
            gulp.dest(dest)
        ])
    })
}

TaskName=[];
for(var s=0;s<List.length;s++)
{
    if(List[s].type=='html')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        html(taskName,List[s].src,List[s].dest)
    }
    else if(List[s].type=='css')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        css(taskName,List[s].src,List[s].dest)
    }
    else if(List[s].type=='js')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        js(taskName,List[s].src,List[s].dest,List[s].Iscompress)
    }
    else if(List[s].type=='images')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        images(taskName,List[s].src,List[s].dest)
    }
    else if(List[s].type=='images2')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        images(taskName,List[s].src,List[s].dest)
    }
    else if(List[s].type=='images3')
    {
        var taskName='task_'+s
        TaskName.push(taskName)
        images(taskName,List[s].src,List[s].dest)
    }
}
// 主任务
gulp.task("default", gulp.series(TaskName,function(){
    return new Promise(function(resolve, reject) {
        console.log("操作完成");
        resolve();
    });
}));