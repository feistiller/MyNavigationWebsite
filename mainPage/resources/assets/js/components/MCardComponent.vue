<template>
    <Col span="8">
    <Card style="margin-left: 10px;">
        <div style="min-height: 200px;">
            <div v-for="(icons,index) in item">
                <div>{{index}}</div>
                <hr style="border-top:1px solid #c4c4c4;">
                <Col span="4" v-for="icon in icons">
                <a v-bind:href="icon.webSrc" target="_blank">
                    <Card style="min-height:80px;margin-left: 5px;margin-top: 5px">
                        <div style="text-align:center">
                            <img style="width:30px" v-bind:src="icon.webIconSrc">
                            <p style="font-size: 10px">{{icon.webName}}</p>
                        </div>
                    </Card>
                </a>
                </Col>
            </div>
        </div>
    </Card>
    </Col>
</template>
<script>
    export default {
        data() {
            return {}
        },
        components: {},
        methods: {},

        props: [
            'item'
        ]
    }
</script>
