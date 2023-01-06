<template>
    <Link :href="route('event.details', item.slug)" class="w-full block px-2 relative hover:text-black text-gray-600">
        <div class="upcome-item overflow-hidden border-slate-300 rounded-lg hover:shadow-xl transition-shadow duration-300"> 
            <div class="upcome-banr h-[200px]">
                <img v-if="item.images && !isEmpty(item.images)" :src="get_banner(item.images)" :alt="item.name" class="h-full object-cover object-center w-full">
            </div>
            <div class="text-left px-3">
                <h2 :title="item.name" class="text-[24px] pt-3 pb-2 text-left font-sans !font-extrabold"> 
                    {{ truncate(item.name, 35) }}
                    
                </h2>
                <div class="grid gap-2">
                    <p>
                        <i class="far fa-calendar-alt text-slate-500"></i> {{ getMonth(item.start_date).slice(0,3) }} {{ formateDate(item.start_date) }}  {{ formateYear(item.start_date) }}
                    </p>
                    <p>
                        <i class="fa-solid fa-location-dot text-slate-500"></i>
                        {{ item.location }}
                    </p>
                </div>
                <div class="border-b border-gray-300 mb-2 mt-3"></div>
                <div class="flex justify-between pb-2">
                    <span v-if="item.min_price">{{  item.min_price }} <span style="font-family: initial !important;">{{ $page.props.currency?.value }}</span></span>
                    <span style="font-family: initial !important;">Free</span>
                    <span class="text-orange-600 font-bold font-sans">Get Ticket</span>
                </div>
            </div>
        </div>
    </Link>
</template>

<script setup>
    import Helper from '@/Helper.js'
    import useEvent from '@/Pages/useEvent.js'
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import {isEmpty} from 'lodash'
    const { get_banner } = useEvent()
    const p = defineProps({
        item: Object
    })
    const { getMonth, formateDate, truncate, formateYear } = Helper()
</script>

<style lang="scss" scoped>

</style>