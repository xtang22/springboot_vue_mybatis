<template>
  <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="login-container1" >
    <h3 class="login_title">省份添加</h3>
    <el-form-item label="省份名" prop="name">
      <el-input v-model="ruleForm.name"></el-input>
    </el-form-item>
    <el-form-item label="标签" prop="tags">
      <el-input v-model="ruleForm.tags"></el-input>
    </el-form-item>
    <el-form-item label="景点个数" prop="placecounts">
      <el-input v-model="ruleForm.placecounts"></el-input>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
    </el-form-item>
  </el-form>
</template>
<script>
  const axios = require('axios');
  export default {
    data() {
      return {
        ruleForm: {
          name: '',
          tags: '',
          placecounts: '',

        },
        rules: {
         name: [
            { required: true, message: '省份不能为空', trigger: 'blur' },
          ],
          tags: [
            { required: true, message: '标签不能为空', trigger: 'blur' },
          ],
          placecounts: [
            { required: true, message: '景点个数不能为空', trigger: 'blur' },
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
            axios.post('/save',this.ruleForm).then(function(resp){
              console.log(resp)
              if(resp.data=="success"){
                // _this.$message('添加书籍成功');
                _this.$alert(_this.ruleForm.name+'添加省份', '消息', {
                  confirmButtonText: '确定',
                  callback: action => {
                    _this.$router.push('/ProvinceManage')
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




<style scoped>

</style>
