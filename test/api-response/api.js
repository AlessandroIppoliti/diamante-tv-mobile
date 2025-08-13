//get user data
fetch("https://api.teyuto.tv/v1/user/?f=user_data", {
  headers: {
    accept: "application/json, text/javascript, */*; q=0.01",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
  },
});

//set new password
fetch("https://api.teyuto.tv/v1/user/?f=set_new_password", {
  headers: {
    accept: "*/*",
    authorization: "Qf90j23Z5mTOXfl7557o37ffadb18d1bd9f2bb083206cc82672c",
    channel: import.meta.env.VITE_CHANNEL_NAME,
    Referer: "https://tv.diamante.live/",
  },
  body: "new_password=PassWord",
  method: "POST",
});

//save user settings
fetch("https://api.teyuto.tv/v1/user/?f=save_settings", {
  headers: {
    accept: "*/*",
    authorization: "gZbQDcOac53dLPHob1er62e0469e27b6eed947692160ef6845c3",
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type":
      "multipart/form-data; boundary=----WebKitFormBoundaryRXV6Vqqzc7P4ZNJ8",
    Referer: "https://tv.diamante.live/",
  },
  body: '------WebKitFormBoundaryRXV6Vqqzc7P4ZNJ8\r\nContent-Disposition: form-data; name="profile_image"; filename="16562.jpg"\r\nContent-Type: image/jpeg\r\n\r\n\r\n------WebKitFormBoundaryRXV6Vqqzc7P4ZNJ8--\r\n',
  method: "POST",
});

//get category
fetch("https://api.teyuto.tv/v1/categories/?f=get_categories", {
  headers: {
    accept: "*/*",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
  },
  body: null,
  method: "GET",
});

//get gift card
fetch(
  "https://api.teyuto.tv/v1/collection/?f=get_payment_preview&all_giftcard=true",
  {
    headers: {
      accept: "application/json, text/javascript, */*; q=0.01",
      authorization: localStorage.getItem("auth_token"),
      channel: import.meta.env.VITE_CHANNEL_NAME,
    },
    referrer: "https://tv.diamante.live/",
    body: null,
    method: "GET",
  }
);

//get content category
fetch(
  "https://api.teyuto.tv/v2/contents?cat=4043&tags=null&page=1&get_type=null&position=All",
  {
    headers: {
      accept: "*/*",
      authorization: localStorage.getItem("auth_token"),
      channel: import.meta.env.VITE_CHANNEL_NAME,
    },
    body: null,
    method: "GET",
  }
);

//reset password
fetch("https://api.teyuto.tv/v1/user/?f=request_change_password", {
  headers: {
    accept: "*/*",
    "accept-language": "it-IT,it;q=0.9,en-US;q=0.8,en;q=0.7",
    authorization: "null",
    channel: "import.meta.env.VITE_CHANNEL_NAME",
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
  },
  referrer: "https://tv.diamante.live/",
  body: "email=ippoliti.alessandro03%2Bdiamante%40gmail.com",
  method: "POST",
});

//create payment giftcard
fetch("https://api.teyuto.tv/v1_1/pay/?f=create_payment_giftcard_checkout", {
  headers: {
    accept: "application/json, text/javascript, */*; q=0.01",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
  },
  referrer: "https://tv.diamante.live/",
  body: "id=8060&message=&email_receiver_gift=",
  method: "POST",
});

//get related content
fetch(
  "https://api.teyuto.tv/v2/contents/collections?f=get_collection&id=6633&option=related_collections&page=14",
  {
    headers: {
      accept: "*/*",
      authorization: "null",
      channel: import.meta.env.VITE_CHANNEL_NAME,
    },
    referrer: "https://tv.diamante.live/",
    body: null,
    method: "GET",
  }
);

//get subscription plan
fetch("https://api.teyuto.tv/v1/collection/?f=get_payment_preview&id=8746", {
  headers: {
    accept: "*/*",
    authorization: "null",
    channel: import.meta.env.VITE_CHANNEL_NAME,
  },
  referrer: "https://tv.diamante.live/",
  body: null,
  method: "GET",
});

//create payment subscription plan
fetch("https://api.teyuto.tv/v1_1/pay/?f=create_payment_checkout", {
  headers: {
    accept: "application/json, text/javascript, */*; q=0.01",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
  },
  referrer: "https://tv.diamante.live/",
  body: "id=8060",
  method: "POST",
});

// get shorts
fetch("https://api.teyuto.tv/v2/contents/shorts?page=1", {
  headers: {
    accept: "application/json, text/javascript, */*; q=0.01",
    authorization: "null",
    channel: import.meta.env.VITE_CHANNEL_NAME,
  },
  referrer: "https://tv.diamante.live/",
  body: null,
  method: "GET",
});

//set saved remove collection
fetch("https://api.teyuto.tv/v1/video/?f=set_saved", {
  headers: {
    accept: "*/*",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
  },
  referrer: "https://tv.diamante.live/",
  body: "id=7860&type=serie&playlist_id=497",
  method: "POST",
});

//update user language
fetch("https://api.teyuto.tv/v1/user/?f=update_user_language", {
  headers: {
    accept: "*/*",
    "accept-language": "en-US,en;q=0.9,it-IT;q=0.8,it;q=0.7",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
    "x-teyuto-language": "fr",
  },
  referrer: "https://tv.diamante.live/",
  body: "language=it",
  method: "POST",
  mode: "cors",
  credentials: "include",
});

//TODO
//get user subscriptions list
fetch("https://api.teyuto.tv/v1/user/?f=get_user_subscriptions", {
  headers: {
    accept: "*/*",
    authorization: localStorage.getItem("auth_token"),
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": "it",
  },
  referrer: "https://tv.diamante.live/",
  body: null,
  method: "POST",
});
