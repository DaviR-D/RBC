<template>
  <div class="container">
    <div class="button-grid">
      <button>Consultar Casos Anteriores</button>
      <button>Cadastrar Novo Caso</button>
      <button>Revisar Casos</button>
      <button>Gerenciar Base de Casos</button>
    </div>
  </div>
</template>

<script setup></script>
<style scoped>
.container {
  position: relative;
}
.button-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 16px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

button {
  padding: 10px;
  font-size: 20px;
  cursor: pointer;
}
</style>
