export const state = () => ({
  objects: []
})

export const mutations = {
  setObjects (state, objects) {
    state.objects = objects
  }
}

export const actions = {
  async getObjects({commit}) {
    const response = await this.$axios.$get('http://localhost:3000/api/v1/objects')
    console.log(response)
    commit('setObjects', response.data)
  }
}

