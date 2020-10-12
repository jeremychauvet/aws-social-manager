<template>
   <div>
      <b-navbar>
        <template slot="start">
            <b-navbar-item>
                <router-link to="/">Home</router-link>
            </b-navbar-item>
        </template>

        <template slot="end">
            <b-navbar-item tag="div">
                <router-link to="/login">Login</router-link>
            </b-navbar-item>
        </template>
    </b-navbar>
    <br><br>
  </div>
</template>

<script>
export default {
  name: "Header"
}
</script>

<style>

</style>
