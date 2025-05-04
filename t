"use client";
import React from "react";

function MainComponent() {
  const [selectedCategory, setSelectedCategory] = useState(null);

  const [socials] = useState([
    {
      url: "https://www.instagram.com/thealiilhan?igsh=eDVpeXRhMjZxYnpi",
      icon: "fab fa-instagram",
    },
    {
      url: "https://www.youtube.com/@the_aliilhan",
      icon: "fab fa-youtube",
    },
    {
      url: "https://www.linkedin.com/in/aliilhantftrip/",
      icon: "fab fa-linkedin",
    },
    {
      url: "https://github.com/aliilhangis",
      icon: "fab fa-github",
    },
  ]);

  const [webApps] = useState([
    {
      title: "Travel Scout",
      url: "https://travelscout.replit.app/",
      icon: "fas fa-plane",
    },
    {
      title: "Email Extractor",
      url: "https://emaliextractor.replit.app/",
      icon: "fas fa-at",
    },
    {
      title: "LinkedIn Content Generator",
      url: "https://linkedincontentgenerator.replit.app/",
      icon: "fab fa-linkedin",
    },
    {
      title: "Social Idea Generator",
      url: "https://socialideagenerator.replit.app/",
      icon: "fas fa-lightbulb",
    },
    {
      title: "Market Comment Download",
      url: "https://marketcommentdowload.replit.app/",
      icon: "fas fa-chart-line",
    },
    {
      title: "QR Code Generator",
      url: "https://qr-opal-five.vercel.app/",
      icon: "fas fa-qrcode",
    },
    {
      title: "Portfolio",
      url: "https://inquisitive-lokum-87ddd6.netlify.app/",
      icon: "fas fa-user",
    },
  ]);

  const [mobileApps] = useState([
    {
      title: "TFTrip",
      url: "https://apps.apple.com/us/app/tftrip/id6444660187",
      icon: "fas fa-map-marked-alt",
    },
    {
      title: "TFTrip Android",
      url: "https://play.google.com/store/apps/details?id=com.tftrip",
      icon: "fas fa-map-marked-alt",
    },
  ]);

  const [links] = useState([
    {
      title: "Web Uygulamalarım",
      icon: "fas fa-laptop-code",
      isCategory: true,
      id: "webapps",
    },
    {
      title: "Mobil Uygulamalarım",
      icon: "fas fa-mobile-alt",
      isCategory: true,
      id: "mobileapps",
    },
    {
      title: "İletişim",
      url: "tel:05452797850",
      icon: "fas fa-phone",
    },
    {
      title: "E-posta",
      url: "mailto:aliilhanege@gmail.com",
      icon: "fas fa-envelope",
    },
  ]);

  return (
    <div className="min-h-screen bg-gradient-to-br from-[#4158D0] via-[#C850C0] to-[#FFCC70] py-12 px-4">
      <div className="max-w-md mx-auto space-y-10">
        <div className="text-center">
          <div className="w-[150px] h-[150px] mx-auto rounded-full overflow-hidden border-4 border-white/30 shadow-xl">
            <img
              src="https://ucarecdn.com/46c1877e-94ea-48f0-af19-c497ef4a5a0c/-/format/auto/"
              alt="Professional headshot"
              className="w-full h-full object-cover"
            />
          </div>
          <h1 className="mt-6 text-4xl font-bold text-white font-roboto">
            Ali İlhan
          </h1>
          <p className="mt-3 text-white/90 font-roboto text-lg">
            No-Code Low Code Developer and GIS Analyst
          </p>
          <p className="mt-2 text-white/80 font-roboto">Based in Izmir</p>

          <div className="flex justify-center gap-6 mt-6">
            {socials.map((social, index) => (
              <a
                key={index}
                href={social.url}
                target="_blank"
                rel="noopener noreferrer"
                className="text-white/90 hover:text-white transition-colors duration-300 transform hover:scale-110"
              >
                <i className={`${social.icon} text-2xl`}></i>
              </a>
            ))}
          </div>
        </div>

        <div className="space-y-4">
          {links.map((link, index) => (
            <div key={index}>
              {link.isCategory ? (
                <button
                  onClick={() =>
                    setSelectedCategory(
                      selectedCategory === link.id ? null : link.id
                    )
                  }
                  className="w-full block bg-white/10 backdrop-blur-md hover:bg-white/10 rounded-xl p-4 text-white font-roboto transition-all duration-300 ease-in-out border border-white/20"
                >
                  <div className="flex items-center justify-between">
                    <div className="flex items-center space-x-4">
                      <div className="bg-white/20 w-10 h-10 rounded-lg flex items-center justify-center">
                        <i className={`${link.icon} text-xl text-white`}></i>
                      </div>
                      <span className="font-medium">{link.title}</span>
                    </div>
                    <i
                      className={`fas fa-chevron-${
                        selectedCategory === link.id ? "up" : "down"
                      } text-white`}
                    ></i>
                  </div>
                </button>
              ) : (
                <a
                  href={link.url}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="w-full block bg-white/10 backdrop-blur-md hover:bg-white/10 rounded-xl p-4 text-white font-roboto transition-all duration-300 ease-in-out border border-white/20"
                >
                  <div className="flex items-center space-x-4">
                    <div className="bg-white/20 w-10 h-10 rounded-lg flex items-center justify-center">
                      <i className={`${link.icon} text-xl text-white`}></i>
                    </div>
                    <span className="font-medium">{link.title}</span>
                  </div>
                </a>
              )}

              {link.id === "webapps" && selectedCategory === "webapps" && (
                <div className="mt-2 space-y-2 pl-4">
                  {webApps.map((app, appIndex) => (
                    <a
                      key={appIndex}
                      href={app.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="block bg-white/5 backdrop-blur-md hover:bg-white/10 rounded-xl p-3 text-white font-roboto transition-all duration-300 ease-in-out border border-white/10"
                    >
                      <div className="flex items-center space-x-3">
                        <div className="bg-white/15 w-8 h-8 rounded-lg flex items-center justify-center">
                          <i className={`${app.icon} text-lg text-white`}></i>
                        </div>
                        <span className="font-medium text-sm">{app.title}</span>
                      </div>
                    </a>
                  ))}
                </div>
              )}

              {link.id === "mobileapps" &&
                selectedCategory === "mobileapps" && (
                  <div className="mt-2 space-y-2 pl-4">
                    {mobileApps.map((app, appIndex) => (
                      <a
                        key={appIndex}
                        href={app.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="block bg-white/5 backdrop-blur-md hover:bg-white/10 rounded-xl p-3 text-white font-roboto transition-all duration-300 ease-in-out border border-white/10"
                      >
                        <div className="flex items-center space-x-3">
                          <div className="bg-white/15 w-8 h-8 rounded-lg flex items-center justify-center">
                            <i className={`${app.icon} text-lg text-white`}></i>
                          </div>
                          <span className="font-medium text-sm">
                            {app.title}
                          </span>
                        </div>
                      </a>
                    ))}
                  </div>
                )}
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

export default MainComponent;
