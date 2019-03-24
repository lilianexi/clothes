<template>
    <div class="app-mypic">
        <form action="http://127.0.0.1:3000/upload" method="POST" enctype="multipart/form-data">
     选择头像:
     <input type="file" name="mypic" />
     <br />
     <input type="submit" value="上传文件" />
    </form>
    </div>
</template>
