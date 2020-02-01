module ShowsHelper
    def get_time_range(show)
        st_time = show.start_time.strftime("%I:%M %p")
        en_time = show.end_time.strftime("%I:%M %p")
        "#{st_time} To #{en_time}"
    end
end
