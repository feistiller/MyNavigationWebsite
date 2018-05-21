<template>
    <Col span="8">
        <Card style="margin-left: 10px">
            <div style="min-height: 200px;">
                <div v-for="(icons,index) in item">
                    <div>{{index}}</div>
                    <hr style="border-top:1px solid #c4c4c4;">
                    <Col span="4" v-for="icon in icons">
                        <Card style="min-height:80px">
                            <div style="text-align:center">
                                <img style="width:30px" v-bind:src="icon.webIconSrc">
                                <h5>{{icon.webName}}</h5>
                            </div>
                        </Card>
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

        props:[
            'item'
        ]
    }
</script>
