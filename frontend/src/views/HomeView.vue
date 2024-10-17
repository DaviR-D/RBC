<template>
  <div>
    <h1>Selecione as características</h1>

    <div v-for="(options, key) in data" :key="key">
      <label :for="key">{{ key }}</label>
      <select :id="key" v-model="selected[key]">
        <option v-for="(value, optionKey) in options" :key="optionKey" :value="optionKey">
          {{ optionKey }}
        </option>
      </select>
    </div>
    <button @click="calcSim">Calcular Similaridade</button>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      data: {
        area_damaged: {
          'low-areas': { traducao: 'áreas-baixas', valor: 1 },
          'upper-areas': { traducao: 'áreas-altas', valor: 2 },
          scattered: { traducao: 'espalhado', valor: 3 },
          'whole-field': { traducao: 'campo-inteiro', valor: 4 }
        },
        canker_lesion: {
          dna: { traducao: 'não-se-aplica', valor: 1 },
          tan: { traducao: 'bronzeado', valor: 2 },
          brown: { traducao: 'marrom', valor: 3 },
          'dk-brown-blk': { traducao: 'marrom-escuro-preto', valor: 4 }
        },
        crop_hist: {
          'same-1st-yr': { traducao: 'mesmo-1°-ano', valor: 1 },
          'same-lst-two-yrs': { traducao: 'mesmo-últ-dois-anos', valor: 2 },
          'same-lst-sev-yrs': { traducao: 'mesmo-últ-anos', valor: 3 },
          'diff-1st-year': { traducao: 'dif-1°-ano', valor: 4 }
        },
        date: {
          janeiro: { traducao: 'janeiro', valor: 1 },
          fevereiro: { traducao: 'fevereiro', valor: 2 },
          março: { traducao: 'março', valor: 3 },
          abril: { traducao: 'abril', valor: 4 },
          maio: { traducao: 'maio', valor: 5 },
          junho: { traducao: 'junho', valor: 6 },
          julho: { traducao: 'julho', valor: 7 },
          agosto: { traducao: 'agosto', valor: 8 },
          setembro: { traducao: 'setembro', valor: 9 },
          outubro: { traducao: 'outubro', valor: 10 },
          novembro: { traducao: 'novembro', valor: 11 },
          dezembro: { traducao: 'dezembro', valor: 12 }
        },
        external_decay: {
          'firm-and-dry': { traducao: 'firme-e-seco', valor: 1 },
          absent: { traducao: 'ausente', valor: 2 }
        },
        fruit_spots: {
          dna: { traducao: 'não-se-aplica', valor: 1 },
          absent: { traducao: 'ausente', valor: 2 },
          colored: { traducao: 'colorido', valor: 3 },
          'brown-w/blk-specks': { traducao: 'marron-com-manchas-pretas', valor: 4 }
        },
        fruiting_bodies: {
          present: { traducao: 'presente', valor: 1 },
          absent: { traducao: 'ausente', valor: 2 }
        },
        fruit_pods: {
          norm: { traducao: 'normal', valor: 1 },
          'few-present': { traducao: 'alguns-presentes', valor: 2 },
          diseased: { traducao: 'doente', valor: 3 },
          dna: { traducao: 'não-se-aplica', valor: 4 },
          desconhecido: { traducao: 'desconhecido', valor: '?' }
        },
        germination: {
          'lt-80%': { traducao: 'menos-de-80%', valor: 1 },
          '80-89%': { traducao: '80-89%', valor: 2 },
          '90-100%': { traducao: '90-100%', valor: 3 }
        },
        hail: {
          no: { traducao: 'não', valor: 1 },
          yes: { traducao: 'sim', valor: 2 }
        },
        int_discolor: {
          none: { traducao: 'nenhum', valor: 1 },
          brown: { traducao: 'marrom', valor: 2 },
          black: { traducao: 'preto', valor: 3 }
        },
        leaf_malf: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        leaf_mild: {
          absent: { traducao: 'ausente', valor: 1 },
          'upper-surf': { traducao: 'surf-superior', valor: 2 },
          'lower-surf': { traducao: 'surf-inferior', valor: 3 }
        },
        leaf_shread: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        leafspots_halo: {
          absent: { traducao: 'ausente', valor: 1 },
          'no-yellow-halos': { traducao: 'sem-auréolas-amarelas', valor: 2 },
          'yellow-halos': { traducao: 'auréolas-amarelas', valor: 3 }
        },
        leafspot_size: {
          'lt-1/8': { traducao: 'menos-de-1/8', valor: 1 },
          'gt-1/8': { traducao: 'mais-de-1/8', valor: 2 },
          dna: { traducao: 'não-se-aplica', valor: 3 }
        },
        leafspots_marg: {
          'no-w-s-marg': { traducao: 'com-margem-nítida', valor: 1 },
          'w-s-marg': { traducao: 'sem-margem-nítida', valor: 2 },
          dna: { traducao: 'não-se-aplica', valor: 3 }
        },
        leaves: {
          norm: { traducao: 'normal', valor: 1 },
          abnorm: { traducao: 'anormal', valor: 2 }
        },
        lodging: {
          no: { traducao: 'não', valor: 1 },
          yes: { traducao: 'sim', valor: 2 }
        },
        mold_growth: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        mycelium: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        plant_growth: {
          norm: { traducao: 'normal', valor: 1 },
          abnorm: { traducao: 'anormal', valor: 2 }
        },
        plant_stand: {
          'lt-normal': { traducao: 'menor-que-o-normal', valor: 1 },
          normal: { traducao: 'normal', valor: 2 }
        },
        precip: {
          'lt-normal': { traducao: 'menos-que-o-normal', valor: 1 },
          normal: { traducao: 'normal', valor: 2 },
          'gt-normal': { traducao: 'maior-que-o-normal', valor: 3 }
        },
        roots: {
          norm: { traducao: 'normal', valor: 1 },
          'galls-cysts': { traducao: 'galhas-cistos', valor: 2 },
          rotted: { traducao: 'podre', valor: 3 }
        },
        sclerotia: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        seed: {
          norm: { traducao: 'normal', valor: 1 },
          abnorm: { traducao: 'anormal', valor: 2 }
        },
        seed_discolor: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        seed_size: {
          'lt-norm': { traducao: 'menor-que-o-normal', valor: 1 },
          norm: { traducao: 'normal', valor: 2 }
        },
        seed_tmt: {
          none: { traducao: 'nenhum', valor: 1 },
          fungicida: { traducao: 'fungicida', valor: 2 },
          outros: { traducao: 'outros', valor: 3 }
        },
        severity: {
          minor: { traducao: 'menor', valor: 1 },
          'pot-severe': { traducao: 'potencialmente-severa', valor: 2 },
          severe: { traducao: 'severa', valor: 3 }
        },
        shriveling: {
          absent: { traducao: 'ausente', valor: 1 },
          present: { traducao: 'presente', valor: 2 }
        },
        stem: {
          norm: { traducao: 'normal', valor: 1 },
          abnorm: { traducao: 'anormal', valor: 2 }
        },
        stem_cankers: {
          absent: { traducao: 'ausente', valor: 1 },
          'below-soil': { traducao: 'abaixo-do-solo', valor: 2 },
          'above-soil': { traducao: 'acima-do-solo', valor: 3 },
          'above-sec-nde': { traducao: 'acima-do-segundo-nó', valor: 4 }
        },
        temp: {
          'lt-norm': { traducao: 'menor-que-o-normal', valor: 1 },
          norm: { traducao: 'normal', valor: 2 },
          'gt-norm': { traducao: 'maior-que-o-normal', valor: 3 }
        }
      },
      selected: {
        area_damaged: 'low-areas',
        canker_lesion: 'dk-brown-blk',
        crop_hist: 'same-1st-yr',
        date: 'abril',
        external_decay: 'absent',
        fruit_spots: 'dna',
        fruiting_bodies: 'absent',
        fruit_pods: 'dna',
        germination: '90-100%',
        hail: 'yes',
        int_discolor: 'none',
        leaf_malf: 'absent',
        leaf_mild: 'absent',
        leaf_shread: 'absent',
        leafspots_halo: 'absent',
        leafspot_size: 'dna',
        leafspots_marg: 'dna',
        leaves: 'abnorm',
        lodging: 'yes',
        mold_growth: 'absent',
        mycelium: 'absent',
        plant_growth: 'abnorm',
        plant_stand: 'lt-normal',
        precip: 'normal',
        roots: 'norm',
        sclerotia: 'absent',
        seed: 'norm',
        seed_discolor: 'absent',
        seed_size: 'norm',
        seed_tmt: 'none',
        severity: 'pot-severe',
        shriveling: 'absent',
        stem: 'abnorm',
        stem_cankers: 'below-soil',
        temp: 'norm'
      }
    }
  },
  methods: {
    calcSim() {
      const novo_caso = { ...this.selected }

      axios
        .post('http://localhost:3000/calcSim', { novo_caso })
        .then((response) => {
          console.log('Dados enviados com sucesso:', response.data)
        })
        .catch((error) => {
          console.error('Erro ao enviar os dados:', error)
        })
    }
  }
}
</script>

<style scoped>
label {
  display: block;
  margin-top: 10px;
  font-weight: bold;
}

select {
  margin-bottom: 20px;
  width: 200px;
}
</style>
