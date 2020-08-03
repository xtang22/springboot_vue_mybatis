<template>
  <div>
    <el-table
      :data="tableData"
      border
      style="width: 100%">
      <el-table-column
        fixed
        prop="id"
        label="编号"
        width="100">
      </el-table-column>
      <el-table-column
        prop="name"
        label="省份"
        width="150">
      </el-table-column>
      <el-table-column
        prop="tags"
        label="标签"
        width="300">
      </el-table-column>
      <el-table-column
        prop="placecounts"
        label="景点个数"
        width="200">
      </el-table-column>


      <el-table-column
        fixed="right"
        label="操作"
        width="200">
        <template slot-scope="scope">
          <el-button @click="edit(scope.row)" type="text" size="small">修改省份</el-button>
          <el-button @click="deleteBook(scope.row)" type="text" size="small">删除省份</el-button>
          <el-button @click="placeList(scope.row)" type="text" size="small">景点列表</el-button>
        </template>
      </el-table-column>
    </el-table>
    <!--  //分页-->
    <el-pagination
      background
      layout="prev, pager, next"
      :page-size="5"
      :total=total
      @current-change="page">
    </el-pagination>
    <!--  //分页-->
  </div>

</template>

<script>
  const axios = require('axios');
  export default {
    methods: {
      deleteBook(row){
        const _this = this
        axios.delete('/deleteById/'+row.id).then(function(resp){
          _this.$alert(row.name+'删除成功！', '消息', {
            confirmButtonText: '确定',
            callback: action => {
              window.location.reload()
            }
          })
        })
      },
      edit(row) {
        this.$router.push({
          path: '/update',
          query: {
            id:row.id
          }
        })
      },
      placeList(row) {
        this.$router.push({
          path: '/placeList',
          query: {
            id:row.id
          }
        })
      },
      page(currentPage){
        const  _this=this
        axios.get('/province/'+currentPage+'/5').then(function (resp) {
          _this.tableData=resp.data.list
          _this.total=resp.data.total
        })
      }
    },
    created() {
      const  _this=this
      axios.get('/province/1/5').then(function (resp) {
        _this.tableData=resp.data.list
        _this.total=resp.data.total
      })
    },

    data() {
      return {
        total: null,
        tableData: null
      }
    }
  }
</script>


<style scoped>

</style>
