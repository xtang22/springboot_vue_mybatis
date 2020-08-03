<template>
  <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="login-container1" >
    <h3 class="login_title">省份修改</h3>
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
        const _this = this
        this.$refs[formName].validate((valid) => {
          if (valid) {
            axios.put('/update',this.ruleForm).then(function(resp){
              if(resp.data == 'success'){
                _this.$alert(_this.ruleForm.name+'修改成功！', '消息', {
                  confirmButtonText: '确定',
                  callback: action => {
                    _this.$router.push('/ProvinceManage')
                  }
                })
              }
            })
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    },
    created() {
      const _this = this
      axios.get('/getProvinceById/'+this.$route.query.id).then(function(resp){
        _this.ruleForm = resp.data
      })
    }
  }
</script>




<style scoped>

</style>
