<style scoped>
    .layout {
        border: 1px solid #d7dde4;
        background: #f5f7f9;
        position: relative;
        border-radius: 4px;
        overflow: hidden;
    }

    .layout-logo {
        width: 100px;
        height: 30px;
        background: #5b6270;
        border-radius: 3px;
        float: left;
        position: relative;
        top: 15px;
        left: 20px;
    }

    .layout-nav {
        width: 420px;
        margin: 0 auto;
        margin-right: 20px;
    }

    .layout-footer-center {
        text-align: center;
    }
</style>
<template>
    <div class="layout">
        <Layout>
            <Header>
                <h-menu></h-menu>
            </Header>
            <Content :style="{padding: '50px'}">
                <m-card v-for="item in cards" :item="item"  ></m-card>
            </Content>
            <c-footer></c-footer>
        </Layout>
    </div>
</template>
<script>
    import hMenu from '../components/HMenuComponent'
    import Footer from '../components/FooterComponent'
    import MCard from '../components/MCardComponent'

    export default {
        data() {
            return {
                cards: []
            }
        },
        components: {
            'h-menu': hMenu,
            'c-footer': Footer,
            'm-card': MCard
        },
        methods: {},
        created: function () {
            axios.get('/api/index').then((res) => {
                if (res.data.code === 0) {
                    this.cards = res.data.data;
                } else {
                    alert(res.data.message)
                }

            })
        }
    }
</script>
