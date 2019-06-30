<template>
  <div class="object-list">
    <table border="1">
      <tr>
        <td>id</td>
        <td>title</td>
        <td>created_at</td>
        <td>updated_at</td>
      </tr>
      <tr v-for="object in objects">
        <td>{{ object.id }}</td>
        <td>{{ object.title }}</td>
        <td>{{ object.created_at }}</td>
        <td>{{ object.updated_at }}</td>
      </tr>
    </table>
  </div>
</template>
<script>
import { mapState, mapActions } from 'vuex'

export default {
  name: 'sample-object',
  computed: {
    ...mapState('object_store', [
      'objects'
    ])
  },
  mounted() {
    this.getObjects()
  },
  methods: {
    ...mapActions({
      getObjects: 'object_store/getObjects'
    })
  }
}

</script>
<style scoped>
</style>
