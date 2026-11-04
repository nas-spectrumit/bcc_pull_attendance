base url : https://attendance.gov.bd/api/

sign-in
email : 960004
password : Bcc@2026

200 response : 
{
    "status": "success",
    "data": {
        "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjI3OWRhODZlODZkZDQ5ODdjOGY1MjY0YmZjNzI4M2I1YWVhMGQ1OTgzZjE5NGYzYzFkNTMwN2M2ZmI2MWVjZmFhOGYyOTJlOTgyMDc1NDFmIn0.eyJhdWQiOiI1IiwianRpIjoiMjc5ZGE4NmU4NmRkNDk4N2M4ZjUyNjRiZmM3MjgzYjVhZWEwZDU5ODNmMTk0ZjNjMWQ1MzA3YzZmYjYxZWNmYWE4ZjI5MmU5ODIwNzU0MWYiLCJpYXQiOjE3OTM3NzQxODUsIm5iZiI6MTc5Mzc3NDE4NSwiZXhwIjoxODI1MzEwMTg1LCJzdWIiOiIxMzYyMCIsInNjb3BlcyI6W119.Itr6DuFUdedJNoTyCpjP5K-j0xg8qMXlmJnmlNXZeQC0TytmLlxC0BNcZbZ40_0IhqyUFZHG2IoRLSDVYiETlp0r_jblt_JRmre53xlzpBaBWHx6G8Y4ZQk6BNO8ivmPlsj-iqfE77bDXKhYwNKd6VeGm_30RVoQXe78ZkDFqr_Aaqad6kKnvercXBAVwE8Ow573m72_v3XOVXFhmIi8XTarqq7rUnq9HVmkw7Kd2rudaAO7FEOxspA0b_UbKEqmTIixrIPXctwIR10O3WpViG6NUs2bbUjYVB-r5FpC8JiQojV30nRSdTykxIyibpm9EFowgKPZMCaWeHQWbao0xNelhq3_S1iQPm386CcvkXT5-DrumJ08Q-yR4_cs3SipmCXLAOZY8vhJL19RbkVOhDnyw29xjf8DDfqGgGnL2zgzcX7TJ7sUEj-wvkR12KArePcRgLwB74CSe_Hf9zV7JNVJ2vJFWceJ-YCR7A4fSZ1rQLl--1IO60-rUGKAm2XhOkDT1mcJMvBpgvcvhrb-SziZyiscHfx6cubZrKcS8Blitz9wQ3kFeFFr3GSN-0EagBMYsfq7f9qZkfOOcYFn1ZmZkTKu2IapblG87XYzpuBSxvi7f7bWuYwQvWVGSbfG0HzSiIxeXzlOW-7Oz67HzVbEkNDbFD3CZ1-1fnoWDs8"
    }
}

401 : 
{
    "status": false,
    "message": "Invalid password."
}
or 
{
    "status": false,
    "message": "Validation failed.",
    "errors": {
        "email": [
            "The email field is required."
        ],
        "password": [
            "The password field is required."
        ]
    }
}
or 
{
    "status": false,
    "message": "Validation failed.",
    "errors": {
        "password": [
            "The password field is required."
        ]
    }
}

so handle it . 

-------

enroll-staff

200 response : 
{
    "status": "Success",
    "EnrollStaffList": [
        {
            "employeed_id": "40000003",
            "full_name": "Amzad Hossain",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-08-09 17:04:53"
        },
        {
            "employeed_id": "960005",
            "full_name": "Test ID",
            "department_name": "এলামস প্রোগ্রাম",
            "created_at": "2026-11-04 12:36:11"
        },
        {
            "employeed_id": "10015551",
            "full_name": "মুহাম্মদ আব্দুল লতিফ",
            "department_name": "অধিগ্রহণ অনুবিভাগ",
            "created_at": "2026-07-12 14:03:51"
        },
        {
            "employeed_id": "10015950",
            "full_name": "মোঃ মঈনুল হাসান",
            "department_name": "খাসজমি অনুবিভাগ",
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "10017063",
            "full_name": "তুষার আহমেদ",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "10015988",
            "full_name": "জাহিদ হোসেন ছিদ্দিক",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "10016111",
            "full_name": "মোহাম্মদ আবদুল্লাহ আল মাহমুদ জামান",
            "department_name": "জরিপ অনুবিভাগ",
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "10016510",
            "full_name": "সাদেকুর রহমান",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20047987",
            "full_name": "আমজাদ হোসেন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "30007731",
            "full_name": "এস এম কামরুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "10015881",
            "full_name": "মোঃ শফিকুল ইসলাম",
            "department_name": "উন্নয়ন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "10016299",
            "full_name": "এ. টি. এম. আজহারুল ইসলাম",
            "department_name": "উন্নয়ন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "10016703",
            "full_name": "মাসুদ কামাল",
            "department_name": "প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "10016279",
            "full_name": "নাসরিন সুলতানা",
            "department_name": "প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "10016148",
            "full_name": "মোহাম্মদ তোফাজ্জল হোসেন",
            "department_name": "প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "10016755",
            "full_name": "নুসরাত জাহান নিসু",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "10016368",
            "full_name": "মোঃ রুহুল আমীন",
            "department_name": "সায়রাত অনুবিভাগ",
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "20492665",
            "full_name": "মাহবুবা আক্তার",
            "department_name": null,
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "20106989",
            "full_name": "সানিয়া তাসনীম জ্যোতি",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20086350",
            "full_name": "মো: আনিসুর রহমান",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "10006848",
            "full_name": "মোঃ আকতার হোসেন আজাদ",
            "department_name": "আইন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "10015618",
            "full_name": "মোঃ শহীদুল ইসলাম",
            "department_name": "খাসজমি অনুবিভাগ",
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "10015853",
            "full_name": "মোহাম্মদ মফিজুল ইসলাম",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "10015030",
            "full_name": "দেলোয়ার হোসেন মাতুব্বর",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20010964",
            "full_name": "প্রদীপ কুমার বিশ্বাস",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20031334",
            "full_name": "শাহানা আক্তার",
            "department_name": null,
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20021928",
            "full_name": "মোঃ ইব্রাহীম মিয়াজী",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20099433",
            "full_name": "তপন কুমার পাল",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20010976",
            "full_name": "মোহাম্মদ রাজিউর রহমান",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20012565",
            "full_name": "মল্লিকা খাতুন",
            "department_name": null,
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "10006271",
            "full_name": "ফাতেমা রহিম ভীনা",
            "department_name": "আইন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "10006349",
            "full_name": "সায়মা ইউনুস",
            "department_name": "জরিপ অনুবিভাগ",
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "10006873",
            "full_name": "নাসরিন জাহান",
            "department_name": "অধিগ্রহণ অনুবিভাগ",
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20012560",
            "full_name": "মোঃ মিজানুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "20012570",
            "full_name": "মোঃ আক্কাছ আলী",
            "department_name": null,
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20500685",
            "full_name": "মোঃ ফাহিম ফয়সাল",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20068116",
            "full_name": "মোঃ হৃদয় আহমেদ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20484974",
            "full_name": "মোহাম্মদ হায়াতুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "10016667",
            "full_name": "মোঃ আশ্রাফুল ইসলাম",
            "department_name": "মাননীয় প্রতিমন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "70090586",
            "full_name": "মীর মোহাম্মদ হেলাল উদ্দীন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "10011438",
            "full_name": "ফারজানা ইয়াসমিন",
            "department_name": "সায়রাত অনুবিভাগ",
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "20500576",
            "full_name": "অমরজিৎ আচার্য্য",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20510631",
            "full_name": "সুদর্শন মন্ডল",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20481021",
            "full_name": "মোঃ আল আমিন ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "20520983",
            "full_name": "মো: আলতাফ হোসেন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "20497387",
            "full_name": "মোঃ সাদ্দাম হোসেন",
            "department_name": "সায়রাত অনুবিভাগ",
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "20010853",
            "full_name": "সুবোধ কুমার মিত্র",
            "department_name": null,
            "created_at": "2026-07-12 14:03:51"
        },
        {
            "employeed_id": "20010973",
            "full_name": "মোঃ শাহ জামাল",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20012559",
            "full_name": "দেবরাজ পহলান মিঠু",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20067412",
            "full_name": "মো: শফিকুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20012550",
            "full_name": "মোঃ জহুরুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:57"
        },
        {
            "employeed_id": "20020684",
            "full_name": "মোঃ আল আমিন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20049918",
            "full_name": "মোঃ রফিকুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "20054121",
            "full_name": "মোসাঃ রাজিয়া সুলতানা",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20067419",
            "full_name": "মো: মনজুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20050361",
            "full_name": "মোঃ খলিলুর রহমান ভূঞা",
            "department_name": null,
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "70090604",
            "full_name": "মোঃ মিজানুর রহমান মিনু",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20012545",
            "full_name": "মুকবুল আহমেদ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:51"
        },
        {
            "employeed_id": "20018438",
            "full_name": "মোঃ হজরত আলী",
            "department_name": null,
            "created_at": "2026-07-12 14:03:51"
        },
        {
            "employeed_id": "20067407",
            "full_name": "মো: আল মামুন ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:51"
        },
        {
            "employeed_id": "20010974",
            "full_name": "মোহাঃ আব্দুস শুকুর",
            "department_name": null,
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "20012562",
            "full_name": "মোঃ নজরুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "20018792",
            "full_name": "মো: জহিরুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "20067405",
            "full_name": "মো: মাহবুবুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20010965",
            "full_name": "মোঃ জামাল উদ্দিন খান",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20010970",
            "full_name": "মোঃ সাইফুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20012553",
            "full_name": "সাহিদা আক্তার",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20067403",
            "full_name": "মো: সফিউল্লাহ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20067421",
            "full_name": "মো: আমির হোসেন ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20067402",
            "full_name": "মো: আবুল কালাম আজাদ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20010788",
            "full_name": "মোঃ মশিউল আলম গাজী",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20067427",
            "full_name": "মো: শাহ আলম সুফল",
            "department_name": null,
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "20010773",
            "full_name": "কে,এম, হাসানুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "20010963",
            "full_name": "পারভীন সুলতানা",
            "department_name": null,
            "created_at": "2026-07-12 14:03:59"
        },
        {
            "employeed_id": "20010776",
            "full_name": "মোঃ হাদিছ উল্লাহ",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20003205",
            "full_name": "মোঃ রিজাউল করিম",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20067425",
            "full_name": "জিন্নাত আরা জুসি",
            "department_name": null,
            "created_at": "2026-07-12 14:04:00"
        },
        {
            "employeed_id": "20010783",
            "full_name": "মোঃ আনিসুর রহমান সবুজ",
            "department_name": null,
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "20012563",
            "full_name": "মোঃ মাহমুদুল আলম",
            "department_name": null,
            "created_at": "2026-07-12 14:04:01"
        },
        {
            "employeed_id": "20060856",
            "full_name": "মোঃ জাহিদুল ইসলাম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "20012566",
            "full_name": "মীর মোহাম্মদ সেলিম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:52"
        },
        {
            "employeed_id": "20496640",
            "full_name": "মোঃ হেলাল উদ্দিন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20500681",
            "full_name": "আফরিনা আক্তার",
            "department_name": "আইন অনুবিভাগ",
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20500687",
            "full_name": "আব্দুল্লাহ আল মামুন",
            "department_name": null,
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20027203",
            "full_name": "মোঃ সফিকুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:03:53"
        },
        {
            "employeed_id": "20010872",
            "full_name": "দীপায়ন চাকমা",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20500686",
            "full_name": "মোঃ হাফিজুর রহমান ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:54"
        },
        {
            "employeed_id": "20500682",
            "full_name": "রিমা",
            "department_name": null,
            "created_at": "2026-07-12 14:03:55"
        },
        {
            "employeed_id": "20500680",
            "full_name": "আহসান হাবীব ",
            "department_name": null,
            "created_at": "2026-07-12 14:03:56"
        },
        {
            "employeed_id": "20500684",
            "full_name": "আরিফুল ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20500683",
            "full_name": "শাহরিয়ার  ইসলাম",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20037655",
            "full_name": "সৈয়দ মোহাম্মদ আম্মার",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:04:03"
        },
        {
            "employeed_id": "20498084",
            "full_name": "নুরজাহান আক্তার",
            "department_name": null,
            "created_at": "2026-07-12 14:04:03"
        },
        {
            "employeed_id": "20091265",
            "full_name": "মীর মাহমুদা আক্তার",
            "department_name": null,
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "30000013",
            "full_name": "মীর মাহামুদা আক্তার",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "10011440",
            "full_name": "মোঃ আবু হারিস মিয়া",
            "department_name": "সচিবের দপ্তর",
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "20010778",
            "full_name": "মোঃ শফিকুর রহমান",
            "department_name": null,
            "created_at": "2026-07-12 14:04:03"
        },
        {
            "employeed_id": "20072064",
            "full_name": "MD Jeyson Jaman Sawar",
            "department_name": "এলামস প্রোগ্রাম",
            "created_at": "2026-10-04 16:26:22"
        },
        {
            "employeed_id": "20079041",
            "full_name": "Md, Nayem Khan",
            "department_name": "সচিবের দপ্তর",
            "created_at": "2026-10-04 16:28:02"
        },
        {
            "employeed_id": "20101473",
            "full_name": "Khairat Hossain",
            "department_name": "এলামস প্রোগ্রাম",
            "created_at": "2026-10-04 16:29:08"
        },
        {
            "employeed_id": "30000016",
            "full_name": "মাসুদ আলী",
            "department_name": null,
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000001",
            "full_name": "মোঃ বাদশা আলম",
            "department_name": null,
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000012",
            "full_name": "মোঃ কবির হোসেন",
            "department_name": null,
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000003",
            "full_name": "সোলায়মান",
            "department_name": null,
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000002",
            "full_name": "মোঃ নাকির হোসেন",
            "department_name": null,
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000004",
            "full_name": "মোঃ মিরাজুল ইসলাম ",
            "department_name": null,
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000010",
            "full_name": "ফারুক সরকার ",
            "department_name": null,
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000005",
            "full_name": "ফজলাতুন নেছা",
            "department_name": null,
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000006",
            "full_name": "মোঃ খলিলুর রহমান ",
            "department_name": null,
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000014",
            "full_name": "কামরুন্নাহার",
            "department_name": null,
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000024",
            "full_name": " শফিকুল ",
            "department_name": null,
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "20500688",
            "full_name": "মোঃ জুয়েল হোসেন",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:03:58"
        },
        {
            "employeed_id": "20064438",
            "full_name": "মো: আব্দুর রহমান",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "30000029",
            "full_name": "মাহমুদুল হাসান",
            "department_name": "যুগ্নসচিব (সায়রাত ) এর দপ্তর",
            "created_at": "2026-07-21 14:39:28"
        },
        {
            "employeed_id": "30000025",
            "full_name": "রমন কুমার দাশ",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "created_at": "2026-07-22 15:41:06"
        },
        {
            "employeed_id": "30000026",
            "full_name": "শাহিন মিয়া",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000038",
            "full_name": "অভিষেক কুমার রায়",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000040",
            "full_name": "হারুনূর রশিদ",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000037",
            "full_name": "প্রিজম চাকমা",
            "department_name": "খাসজমি অনুবিভাগ",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000008",
            "full_name": "মোছাঃ মমতাজ বেগম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000032",
            "full_name": "আনোয়ার",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000035",
            "full_name": "রহিমা মাহামুদ",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000036",
            "full_name": "হাবিবা আক্তার",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:07"
        },
        {
            "employeed_id": "30000020",
            "full_name": "কামরুজ্জামান বিপ্লব",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000011",
            "full_name": "এন্টেস মিয়া",
            "department_name": "খাসজমি অনুবিভাগ",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000022",
            "full_name": "দীপংকর পাল",
            "department_name": "খাসজমি অনুবিভাগ",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000019",
            "full_name": "মোঃ শফিকুল ইসলাম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000041",
            "full_name": "শফিকুল",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:08"
        },
        {
            "employeed_id": "30000018",
            "full_name": "মোঃ নুরুল ইসলাম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000007",
            "full_name": "আবুল হাসেম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000023",
            "full_name": "আবু সায়েম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000017",
            "full_name": "মোঃ বশীর উদ্দিন",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000015",
            "full_name": "ইউনুস",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:09"
        },
        {
            "employeed_id": "30000030",
            "full_name": "মোঃ সাঈদীন",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000033",
            "full_name": "মোঃসাইফুর রহমান",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000039",
            "full_name": "এস এম তৌফিক হাসান",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000034",
            "full_name": "জিল্লুর রহমান",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000009",
            "full_name": "আব্বাস উদ্দিন",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000027",
            "full_name": "ইলিয়াস",
            "department_name": "সিনিয়র সচিবের দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000021",
            "full_name": "মাহিদুল ইসলাম",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-22 15:41:10"
        },
        {
            "employeed_id": "30000031",
            "full_name": "মোঃ আক্কাস আলী",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-08-17 16:10:24"
        },
        {
            "employeed_id": "20017648",
            "full_name": "মোহাম্মদ নূর হোসেন",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-14 18:22:49"
        },
        {
            "employeed_id": "20073885",
            "full_name": "সুকান্ত কুমার মন্ডল",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "created_at": "2026-07-12 14:04:02"
        },
        {
            "employeed_id": "10006536",
            "full_name": "মোঃ এমদাদুল হক চৌধুরী",
            "department_name": "সচিবের দপ্তর",
            "created_at": "2026-07-12 14:03:54"
        }
    ]
}

401 :
{
    "status": "error",
    "message": "Unauthenticated."
}


----
present-staff

change_date : can add date any on from calender 
(backend want formate date is  : 2026-10-19)
for app default date fetch will be today 


200 response : 
{
    "status": "Success",
    "presentStaffList": [
        {
            "full_name": "আনোয়ার",
            "employeed_id": "30000032",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "07:49:04",
            "out_time": "19:25:25",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "তুষার আহমেদ",
            "employeed_id": "10017063",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "07:56:37",
            "out_time": "16:33:16",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ মিরাজুল ইসলাম ",
            "employeed_id": "30000004",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:06:26",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ খলিলুর রহমান ",
            "employeed_id": "30000006",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:09:47",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মাসুদ আলী",
            "employeed_id": "30000016",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:10:57",
            "out_time": "15:53:12",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": " শফিকুল ",
            "employeed_id": "30000024",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:23:22",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "আব্বাস উদ্দিন",
            "employeed_id": "30000009",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:23:33",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "আবুল হাসেম",
            "employeed_id": "30000007",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:23:35",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মো: আমির হোসেন ",
            "employeed_id": "20067421",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:28:47",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "রিমা",
            "employeed_id": "20500682",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:28:52",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আক্কাছ আলী",
            "employeed_id": "20012570",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:30:31",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "হারুনূর রশিদ",
            "employeed_id": "30000040",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:30:57",
            "out_time": "16:03:44",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মো: জহিরুল ইসলাম",
            "employeed_id": "20018792",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:32:24",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "এস এম তৌফিক হাসান",
            "employeed_id": "30000039",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:33:45",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ জুয়েল হোসেন",
            "employeed_id": "20500688",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:34:42",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "শফিকুল",
            "employeed_id": "30000041",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:34:47",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আক্কাস আলী",
            "employeed_id": "30000031",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:37:03",
            "out_time": "16:04:53",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোছাঃ মমতাজ বেগম",
            "employeed_id": "30000008",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:37:08",
            "out_time": "15:48:26",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোহাঃ আব্দুস শুকুর",
            "employeed_id": "20010974",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:39:43",
            "out_time": "11:41:38",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মো: শফিকুল ইসলাম",
            "employeed_id": "20067412",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:39:56",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "সৈয়দ মোহাম্মদ আম্মার",
            "employeed_id": "20037655",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:40:01",
            "out_time": "15:59:41",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ বাদশা আলম",
            "employeed_id": "30000001",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:40:10",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আবু হারিস মিয়া",
            "employeed_id": "10011440",
            "department_name": "সচিবের দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:41:31",
            "out_time": "19:28:15",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মীর মোহাম্মদ সেলিম",
            "employeed_id": "20012566",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:43:36",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মো: সফিউল্লাহ",
            "employeed_id": "20067403",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:43:43",
            "out_time": "16:52:30",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "এন্টেস মিয়া",
            "employeed_id": "30000011",
            "department_name": "খাসজমি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:44:14",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "নুরজাহান আক্তার",
            "employeed_id": "20498084",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:45:24",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ রফিকুল ইসলাম",
            "employeed_id": "20049918",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:45:28",
            "out_time": "16:25:06",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "হাবিবা আক্তার",
            "employeed_id": "30000036",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:45:34",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ মাহমুদুল আলম",
            "employeed_id": "20012563",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:45:38",
            "out_time": "16:42:30",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "সানিয়া তাসনীম জ্যোতি",
            "employeed_id": "20106989",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:46:29",
            "out_time": "16:52:02",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ আনিসুর রহমান সবুজ",
            "employeed_id": "20010783",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:46:55",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "এ. টি. এম. আজহারুল ইসলাম",
            "employeed_id": "10016299",
            "department_name": "উন্নয়ন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:47:38",
            "out_time": "12:25:17",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ খলিলুর রহমান ভূঞা",
            "employeed_id": "20050361",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:47:43",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "জিন্নাত আরা জুসি",
            "employeed_id": "20067425",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:47:49",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মাহিদুল ইসলাম",
            "employeed_id": "30000021",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:48:16",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ জহুরুল ইসলাম",
            "employeed_id": "20012550",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:49:41",
            "out_time": "16:39:02",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "দেবরাজ পহলান মিঠু",
            "employeed_id": "20012559",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:49:46",
            "out_time": "15:51:01",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ কবির হোসেন",
            "employeed_id": "30000012",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:49:50",
            "out_time": "16:52:43",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "ফারুক সরকার ",
            "employeed_id": "30000010",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:49:56",
            "out_time": "19:25:52",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ শহীদুল ইসলাম",
            "employeed_id": "10015618",
            "department_name": "খাসজমি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:50:10",
            "out_time": "17:22:39",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ এমদাদুল হক চৌধুরী",
            "employeed_id": "10006536",
            "department_name": "সচিবের দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:51:23",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আকতার হোসেন আজাদ",
            "employeed_id": "10006848",
            "department_name": "আইন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:51:40",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃসাইফুর রহমান",
            "employeed_id": "30000033",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:51:51",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "আফরিনা আক্তার",
            "employeed_id": "20500681",
            "department_name": "আইন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:52:24",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "রহিমা মাহামুদ",
            "employeed_id": "30000035",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:52:34",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মুহাম্মদ আব্দুল লতিফ",
            "employeed_id": "10015551",
            "department_name": "অধিগ্রহণ অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:54:33",
            "out_time": "16:49:56",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "ইউনুস",
            "employeed_id": "30000015",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:54:41",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "নাসরিন জাহান",
            "employeed_id": "10006873",
            "department_name": "অধিগ্রহণ অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:54:46",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোহাম্মদ নূর হোসেন",
            "employeed_id": "20017648",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:54:58",
            "out_time": "19:05:57",
            "in_received_from": "Mobile APP",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "আহসান হাবীব ",
            "employeed_id": "20500680",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:54:54",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আল আমিন ",
            "employeed_id": "20481021",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:00",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ নাকির হোসেন",
            "employeed_id": "30000002",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:04",
            "out_time": "16:50:02",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোহাম্মদ হায়াতুর রহমান",
            "employeed_id": "20484974",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:04",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "শাহানা আক্তার",
            "employeed_id": "20031334",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:14",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "MD Jeyson Jaman Sawar",
            "employeed_id": "20072064",
            "department_name": "এলামস প্রোগ্রাম",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:33",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "জিল্লুর রহমান",
            "employeed_id": "30000034",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:55:37",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মো: আবুল কালাম আজাদ",
            "employeed_id": "20067402",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:56:03",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোসাঃ রাজিয়া সুলতানা",
            "employeed_id": "20054121",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:57:30",
            "out_time": "16:41:06",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মো: আল মামুন ",
            "employeed_id": "20067407",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:57:33",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মল্লিকা খাতুন",
            "employeed_id": "20012565",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:57:37",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ শফিকুল ইসলাম",
            "employeed_id": "10015881",
            "department_name": "উন্নয়ন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:58:24",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "নাসরিন সুলতানা",
            "employeed_id": "10016279",
            "department_name": "প্রশাসন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:59:01",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "নুসরাত জাহান নিসু",
            "employeed_id": "10016755",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:59:05",
            "out_time": "15:54:29",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "সোলায়মান",
            "employeed_id": "30000003",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:59:36",
            "out_time": "16:33:57",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "কামরুন্নাহার",
            "employeed_id": "30000014",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:59:41",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মো: আব্দুর রহমান",
            "employeed_id": "20064438",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "08:59:43",
            "out_time": "14:38:35",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ হাদিছ উল্লাহ",
            "employeed_id": "20010776",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:03:14",
            "out_time": "16:33:54",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ ইব্রাহীম মিয়াজী",
            "employeed_id": "20021928",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:03:47",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ আল আমিন",
            "employeed_id": "20020684",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:03:53",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "Khairat Hossain",
            "employeed_id": "20101473",
            "department_name": "এলামস প্রোগ্রাম",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:03:58",
            "out_time": "16:05:56",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "ফারজানা ইয়াসমিন",
            "employeed_id": "10011438",
            "department_name": "সায়রাত অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:04:14",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ শফিকুর রহমান",
            "employeed_id": "20010778",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:04:16",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "ফাতেমা রহিম ভীনা",
            "employeed_id": "10006271",
            "department_name": "আইন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:06:09",
            "out_time": "16:57:42",
            "in_received_from": "Mobile APP",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "দেলোয়ার হোসেন মাতুব্বর",
            "employeed_id": "10015030",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:07:07",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ মিজানুর রহমান",
            "employeed_id": "20012560",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:10:18",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ হেলাল উদ্দিন",
            "employeed_id": "20496640",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:10:40",
            "out_time": "16:23:17",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মো: আনিসুর রহমান",
            "employeed_id": "20086350",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:13:08",
            "out_time": "18:25:42",
            "in_received_from": "Mobile APP",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "মো: মাহবুবুর রহমান",
            "employeed_id": "20067405",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:13:02",
            "out_time": "15:53:18",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "আমজাদ হোসেন",
            "employeed_id": "20047987",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "P",
            "in_time": "09:14:59",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মীর মাহামুদা আক্তার",
            "employeed_id": "30000013",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:15:22",
            "out_time": "16:01:12",
            "in_received_from": "Attendance Device",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "মোহাম্মদ মফিজুল ইসলাম",
            "employeed_id": "10015853",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:16:41",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোহাম্মদ আবদুল্লাহ আল মাহমুদ জামান",
            "employeed_id": "10016111",
            "department_name": "জরিপ অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:18:02",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "সায়মা ইউনুস",
            "employeed_id": "10006349",
            "department_name": "জরিপ অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:18:40",
            "out_time": "15:44:14",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মাহবুবা আক্তার",
            "employeed_id": "20492665",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:20:42",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "আবু সায়েম",
            "employeed_id": "30000023",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:21:45",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "প্রদীপ কুমার বিশ্বাস",
            "employeed_id": "20010964",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:22:32",
            "out_time": "16:11:06",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ বশীর উদ্দিন",
            "employeed_id": "30000017",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:22:37",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "কে,এম, হাসানুর রহমান",
            "employeed_id": "20010773",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:34:56",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মাহমুদুল হাসান",
            "employeed_id": "30000029",
            "department_name": "যুগ্নসচিব (সায়রাত ) এর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:36:41",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ রুহুল আমীন",
            "employeed_id": "10016368",
            "department_name": "সায়রাত অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:42:34",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ সফিকুর রহমান",
            "employeed_id": "20027203",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:47:05",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মো: মনজুর রহমান",
            "employeed_id": "20067419",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:49:42",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ জাহিদুল ইসলাম",
            "employeed_id": "20060856",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "09:57:33",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "সাদেকুর রহমান",
            "employeed_id": "10016510",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "10:02:37",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোহাম্মদ রাজিউর রহমান",
            "employeed_id": "20010976",
            "department_name": "ডিকেএমপি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "10:19:59",
            "out_time": "17:03:32",
            "in_received_from": "Attendance Device",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "মোঃ মশিউল আলম গাজী",
            "employeed_id": "20010788",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "10:28:36",
            "out_time": "18:29:41",
            "in_received_from": "Mobile APP",
            "out_received_from": "Mobile APP"
        },
        {
            "full_name": "মোঃ সাদ্দাম হোসেন",
            "employeed_id": "20497387",
            "department_name": "সায়রাত অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "10:48:08",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "জাহিদ হোসেন ছিদ্দিক",
            "employeed_id": "10015988",
            "department_name": "মাঠ প্রশাসন অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "11:28:11",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "শাহিন মিয়া",
            "employeed_id": "30000026",
            "department_name": "অতিরিক্ত সচিব DKMP অনিবিভাগ এর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "11:56:45",
            "out_time": "15:37:31",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        },
        {
            "full_name": "মোঃ সাইফুল ইসলাম",
            "employeed_id": "20010970",
            "department_name": null,
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "12:13:43",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ শফিকুল ইসলাম",
            "employeed_id": "30000019",
            "department_name": "মাননীয় মন্ত্রীর দপ্তর",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "13:21:08",
            "out_time": null,
            "in_received_from": "Attendance Device",
            "out_received_from": null
        },
        {
            "full_name": "মোঃ মঈনুল হাসান",
            "employeed_id": "10015950",
            "department_name": "খাসজমি অনুবিভাগ",
            "attendance_date": "2026-10-19",
            "attendance_status": "L",
            "in_time": "13:45:29",
            "out_time": "15:32:28",
            "in_received_from": "Attendance Device",
            "out_received_from": "Attendance Device"
        }
    ]
}



Todo: 
i give u response for get the response style/model.

buld a flutter app with this 3 api 

user open app > login > can check enroll list and attendance list with all the info in response have.

on both list. i want a fontend search option by normal matching employeed_id / full_name. i mean local search from list.

minimal code. standard premium UI. 