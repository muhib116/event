<template>
    <Head title="Event Details" />
    <Master>
        <div class="result-wrapper footer_mh">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="result-right">
                            <div v-if="!isEmpty(events)" class="result-forupr">
                                <h2>Search results for <span> “{{ events[0].eventCategory }}”</span></h2>
                            </div>
                            <div v-else class="min-h-[calc(51vh+5px)] flex items-center justify-center">
                                <h1 class="font">No result found</h1>
                            </div>

                            <div class="row">
                                <div class="col-sm-6 col-xl-4 mb-8" v-for="(event, index) in events" :key="index">
                                    <EventCard :item="event" />
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </Master>
</template>

<script setup>
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import { isEmpty } from 'lodash'
    import Master from './Master.vue'
    import useEvent from '@/Pages/useEvent.js'
    import Helper from '@/Helper.js' 
    import EventCard from '@/Components/Frontend/components/EventCard.vue'

    const { get_banner } = useEvent()
    const props = defineProps({
        events: Array
    })
    console.log(props.events);
    const { getMonth, formateDate, truncate } = Helper()
</script>

<style lang="scss" scoped>

</style>