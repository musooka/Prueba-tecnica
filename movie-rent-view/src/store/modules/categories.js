import axios from "axios";
export default {
    namespaced: true,
    state: {
        data: {},
    },
    getters: {
        data: state => state.data,
    },
    actions: {
        async getData({commit }) {
            const data = await axios.get('http://localhost:3000/categories');
            commit('SET_DATA',data.data);
        },
    },
    mutations: {
        SET_DATA(state, data) {
            state.data = data;
        },
    }
}