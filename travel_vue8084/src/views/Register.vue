<template>
  <body id="poster">
<!--  "demo-ruleForm"-->
  <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="login-container1" >
    <h3 class="login_title">旅游系统用户注册</h3>
    <el-form-item label="用户名" prop="username">
      <el-input v-model="ruleForm.username"></el-input>
    </el-form-item>
    <el-form-item label="密码" prop="password">
      <el-input v-model="ruleForm.password"></el-input>
    </el-form-item>
    <el-form-item label="邮箱" prop="email">
      <el-input v-model="ruleForm.email"></el-input>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
    </el-form-item>
  </el-form>
  </body>
</template>
<script>
  const axios = require('axios');
  export default {
    data() {
      return {
        ruleForm: {
          username: '',
          password: '',
          email: '',

        },
        rules: {
          username: [
            { required: true, message: '用户名不能为空', trigger: 'blur' },
          ],
          password: [
            { required: true, message: '密码不能为空', trigger: 'blur' },
          ],
          email: [
            { required: true, message: '邮箱不能为空', trigger: 'blur' },
          ],
        }
      };
    },
    methods: {
      submitForm(formName) {
        const  _this=this
        this.$refs[formName].validate((valid) => {
          if (valid) {
            // alert('submit!');
            axios.post('/register',this.ruleForm).then(function(resp){
              console.log(resp)
              if(resp.message==="注册成功"){
                // _this.$message('添加书籍成功');
                _this.$alert(_this.ruleForm.name+'添加用户成功', '消息', {
                  confirmButtonText: '确定',
                  callback: action => {
                    _this.$router.push('/login')
                  }
                });
              }
            })
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>
<style>
  #poster {
    background:url("../assets/logo.png") no-repeat;
    background-position: center;
    height: 100%;
    width: 100%;
    background-size: cover;
    position: fixed;
  }
  body{
    margin: 0px;
    padding: 0;
  }

  .login-container1 {
    border-radius: 15px;
    background-clip: padding-box;
    margin: 90px auto;
    width: 350px;
    padding: 35px 35px 15px 35px;
    background: #fff;
    border: 1px solid #eaeaea;
    box-shadow: 0 0 25px #cac6c6;
  }

  .login_title {
    margin: 0px auto 40px auto;
    text-align: center;
    color: #505458;
  }


</style>




