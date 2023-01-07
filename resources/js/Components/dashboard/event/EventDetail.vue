<template>
    <div class="event-details event-page event-item" data-item="details"> 
        <h2>Event Details</h2>
        <div class="element">
            <label for="name">*Event Name</label>
            <input name="name" :class="validationFor.name.hasError && 'border-red-500'" type="text" v-model="eventForm.name" placeholder="Write your event name">
        </div>
        <div class="element">
            <label for="name">*Describe your event</label>
            <textarea rows="15" :class="validationFor.description.hasError && 'border-red-500'" v-model="eventForm.description" placeholder="Write about your event"></textarea>
        </div>
        <div class="element">
            <label for="name">Terms and Conditions</label>
            <textarea rows="15" v-model="eventForm.terms_and_conditions" placeholder="Write terms and condition for your event"></textarea>
        </div>
        <div class="element">
            <label for="name">Audience</label>
            <textarea rows="15" v-model="eventForm.audience" placeholder="Write you message for the audience"></textarea>
        </div>
        <div class="element">
            <label for="name">Attention</label>
            <textarea rows="15" v-model="eventForm.attention"></textarea>
        </div>
        <div class="element">
            <label for="location">*Location of event</label>
            <input name="location" :class="validationFor.location.hasError && 'border-red-500'" v-model="eventForm.location" type="text" placeholder="Write your event location">
        </div>
        <!-- <div class="element">
            <label for="map_link">Location map link</label>
            <input name="map_link" v-model="eventForm.map_link" type="text" placeholder="Map link">
        </div> -->
        <div class="element">
            <label for="location">*Use Custom URL</label>
            <div class="input-container">
                <div class="startup flex whitespace-nowrap">{{ $page.props.url }}/event-details</div>
                <input name="url" type="url" :class="validationFor.url.hasError && 'border-red-500'" required v-model="eventForm.url" placeholder="Enter custom url">
            </div>
        </div>
        <div class="element">
            <label for="location">*Location tips</label>
            <input 
                name="location" 
                type="text" required 
                placeholder="Use an uber, it's the green building on the left, etc"
                :class="validationFor.locationTips.hasError && 'border-red-500'"
                v-model="eventForm.locationTips"
            >
        </div>
        <div class="element">
            <label for="location">Video Link</label>
            <input 
                name="video_link" 
                type="text" required 
                placeholder="Enter youtube video link"
                v-model="eventForm.video_link"
            >
        </div>
        <h3>What kind of event is it?</h3>
        <p>Select the applicable category for your event</p>


        <!-- desktop kind of event -->
        <div class="kind-of-event">
            <div 
                v-for="item in eventsCategory" 
                :key="item.name" 
                class="type" :class="(item.isSelected&&'active')"
                @click="() => {
                    setActiveEvent(item)
                    eventForm.eventCategory = item.slug
                }"
            >
                <img :src="item.src" />
                <span class="name">
                    {{ item.name }}
                </span>
            </div>
        </div>


        <!-- mobile kind of event -->
        <div class="element mobile">
            <select v-model="eventForm.eventCategory">
                <option v-for="item in eventsCategory" :key="'event-'+item.name" :value="item.slug">
                    {{ item.name }}
                </option>
            </select>
        </div>

        <h3>When is your event?</h3>
        <p class="mb-4">Select all the dates of your event</p>
        <div class="when">

            <div class="element">
                <label for="location">*Start date</label>
                <div class="date-time">
                    <input :class="validationFor.start_date.hasError && 'border-red-500'" v-model="eventForm.start_date" type="date">
                    <input :class="validationFor.start_time.hasError && 'border-red-500'" v-model="eventForm.start_time" type="time">
                </div>
            </div>
            <div class="element scroll_target">
                <label for="location">*End date</label>
                <div class="date-time">
                    <input :class="validationFor.end_date.hasError && 'border-red-500'" v-model="eventForm.end_date" type="date">
                    <input :class="validationFor.end_time.hasError && 'border-red-500'" v-model="eventForm.end_time" type="time">
                </div>
            </div>
        </div>
        
        <h2>Social details</h2>
        <div class="element"> 
            <div class="input-container">
                <div class="startup"><i class="fa-solid fa-link"></i></div>
                <input v-model="eventForm.website" name="Website" type="url" placeholder="Your Website URL">
            </div>
        </div>
        <div class="element"> 
            <div class="input-container">
                <div class="startup"><i class="fa-brands fa-instagram"></i></div>
                <input v-model="eventForm.instagram" name="instagram" type="url" placeholder="Your Instagram Handle">
            </div>
        </div>
        <div class="element"> 
            <div class="input-container">
                <div class="startup"><i class="fa-brands fa-twitter"></i></div>
                <input v-model="eventForm.twitter" name="twitter" type="url" placeholder="Your Twitter Handle">
            </div>
        </div>
        <div class="element"> 
            <div class="input-container">
                <div class="startup"><i class="fa-brands fa-facebook-f"></i></div>
                <input v-model="eventForm.facebook" name="facebook" type="url" placeholder="Your Facebook Handle">
            </div>
        </div>
        <!-- Continue Buttons -->
        <div class="save-or-cancel" v-if="!$page.props.is_paid">
            <Link v-if="!editable" class="button save" :href="route('dashboard')">Cancel</Link>
            <div class="button save bg-red cursor-pointer" @click="handleEvent">
                {{ editable ? 'Update' : 'Continue' }}
            </div>
        </div>
    </div>
</template>



<script setup>
    import axios from 'axios';
    import { ref, watch, onMounted } from 'vue'
    import useEvent from '../../../Pages/useEvent.js'
    import { Link } from '@inertiajs/inertia-vue3'
    import { useToast } from "vue-toastification";
    const toast = useToast();
    const props = defineProps({
        callback: {
            type: Function
        },
        editable: {
            type: Boolean,
            default: false
        },
        userId: [String, Number]
    })

    const {
        eventsCategory, 
        setActiveEvent,
        eventForm,
        getEventId,
        getEvent
    } = useEvent()

    let validationFor = ref({
        name: {
            field: 'name',
            title: 'Event Name',
            hasError: false
        },
        description: {
            field: 'description',
            title: 'Event Description',
            hasError: false
        },
        location: {
            field: 'location',
            title: 'Event Location',
            hasError: false
        },
        url: {
            field: 'url',
            title: 'Custom URL',
            hasError: false
        },
        locationTips: {
            field: 'locationTips',
            title: 'Location Tips',
            hasError: false
        },
        timezone: {
            field: 'timezone',
            title: 'Time Zone',
            hasError: false
        },
        start_date: {
            field: 'start_date',
            title: 'Start Date',
            hasError: false
        },
        start_time: {
            field: 'start_time',
            title: 'Start Time',
            hasError: false
        },
        end_date: {
            field: 'end_date',
            title: 'End Date',
            hasError: false
        },
        end_time: {
            field: 'end_time',
            title: 'End Time',
            hasError: false
        }
    })

    
    const eventId = ref(null)
    let isValid = ref(false)
    const validateThisPage = () => 
    {
        for(let item in validationFor.value){
            let validate = eventForm.value[item]
            validationFor.value[item].hasError = !validate
        }
    }

    const handleEvent = async () => {
        if(!isValid.value) {
            toast.error("Required field must not be empty!", {
                timeout: 2000,
                position: "top-center",
            })
            return
        }
        if(props.editable){
            updateEvent(eventForm.value, getEventId())
            return;
        }
        let res = await saveEvent(eventForm.value)
        
        if(res){
            window.location.href=route('appearance', eventId.value)
            return;
        }
        toast.error("Event not created!", {
            timeout: 2000,
            position: "top-center",
        })
    }

    const saveEvent = async (payload) => {
        payload.user_id = props.userId
        let { data } = await axios.post('store/event', payload)
        if(data.id){
            eventId.value = data.id
            return true
        }

        return false
    }

    const updateEvent = async (payload, eventId) => {
        let { data } = await axios.post(`event/edit/${eventId}`, payload)
        if(data.status){
            toast.success("Event Updated Successfully!", {
                timeout: 2000,
                position: "top-center",
            })
        }
        console.log(data);
        if (data.error) {
            toast.error(data.error);
        }
    }

    const getValidationStatus = () => {
        isValid.value = true
        for(let item in validationFor.value){
            if(validationFor.value[item].hasError){
                isValid.value = false
            }
        }
    }

    watch(eventForm, () => {
        validateThisPage()
        getValidationStatus()
    }, {deep: true})

    const makeEventTypeSelected = (eventCat) => {
        eventsCategory.value.forEach(item=>{
            if(item.slug == eventCat){
                item.isSelected = true
            }
        })
    }

    onMounted(async () => {
        if(props.editable){
            let eventData = await getEvent(getEventId())
            eventForm.value = eventData
            makeEventTypeSelected(eventData.eventCategory)
        }
    })
</script>

<style scoped>
    .event-details .element textarea {
        color: var(--dark);
        background-color: #fff;
        background-image: none;
        border-radius: 6px;
        border: 1px solid rgba(0, 0, 0, 0.2);
        height: 140px;
        outline: 0;
        padding: 15px 15px;
        transition: border-color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
        width: 100%;
    }
</style>