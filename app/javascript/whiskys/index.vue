<template>
  <div id="index">
    <p>{{ message }}</p>
  </div>

  
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello from Vue index!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>