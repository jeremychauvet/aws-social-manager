<template>
   <div>
      <b-navbar>
        <template slot="start">
            <b-navbar-item href="/">
                Home
            </b-navbar-item>
            <b-navbar-item href="/about">
                About
            </b-navbar-item>
        </template>

        <template slot="end">
            <b-navbar-item tag="div">
                <div class="buttons">
                    <button class="button is-light">
                        Log in
                    </button>
                </div>
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
