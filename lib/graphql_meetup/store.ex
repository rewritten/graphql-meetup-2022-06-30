defmodule GraphqlMeetup.Store do
  @moduledoc """
  Data generated with Faker. There are 10 users, each with 4 posts.

  The lists are shuffled at compile time to prevent the results from being
  biased because of the order in which the data is generated.
  """

  @users [
           %{
             email: "baron_beatty@nienow.info",
             id: "85c08e06-110c-441c-97a9-56afb329ebaa",
             name: "Mrs. Pamela Medhurst"
           },
           %{
             email: "noemie2069@mayer.biz",
             id: "0876a05c-639f-4765-8de2-20f6f164cadd",
             name: "Mr. Kennith Swaniawski"
           },
           %{
             email: "walton_purdy@hermiston.com",
             id: "de5940b5-48d0-44e4-b0f9-1b645cfaef21",
             name: "Mrs. Chadrick Jacobson"
           },
           %{
             email: "dallin_collier@hahn.name",
             id: "4e063ede-ce5c-4761-8da5-38588e80ac28",
             name: "Ms. Miguel Zulauf Jr."
           },
           %{
             email: "damien.goldner@johns.com",
             id: "6e7de56c-1ba1-4b93-9df8-6efc3333bea2",
             name: "Katheryn Quigley MD"
           },
           %{
             email: "karolann2100@marvin.info",
             id: "635f7586-b6c9-4618-b7b8-527653f5b59b",
             name: "Cordelia Daugherty"
           },
           %{
             email: "sarina1942@medhurst.net",
             id: "9c366479-18c4-437f-8456-60647290d4fa",
             name: "Leone Lubowitz"
           },
           %{
             email: "alanna.raynor@weissnat.info",
             id: "24fdc939-b49e-43e8-9faa-c0b49b0529f2",
             name: "Mr. Agnes Dooley Jr."
           },
           %{
             email: "shanel.durgan@wolf.biz",
             id: "f293b449-ab66-42f4-bc4f-2da7927136a5",
             name: "Davion Toy Jr."
           },
           %{
             email: "beulah1946@mertz.info",
             id: "174812e5-2d82-48b8-b052-f57daaf3c6ee",
             name: "Zella Crist"
           }
         ]
         |> Enum.shuffle()

  @posts [
           %{
             author: "85c08e06-110c-441c-97a9-56afb329ebaa",
             body:
               "Cumque sed aut rerum. Necessitatibus odit optio sed natus assumenda temporibus mollitia at sint. Ratione et quibusdam libero numquam porro nisi voluptatem iusto quia. Qui enim est ea delectus et molestiae.\n\nPariatur qui dolorem fugit minus earum cum. Quo reprehenderit libero et.",
             id: "e1206934-ed69-40dd-bcd9-8ec383f45035",
             title:
               "Laudantium eos voluptas saepe odio perferendis tempore dolorem corporis alias."
           },
           %{
             author: "85c08e06-110c-441c-97a9-56afb329ebaa",
             body:
               "Eum commodi eos iusto iste! Est et corrupti quo enim tempora beatae.\n\nRepudiandae vel dolorum modi modi non nesciunt recusandae ea aliquid. Perferendis commodi asperiores sit cupiditate necessitatibus? Ut ea dolores eius? Cupiditate earum magnam repellendus sed repellat ratione et dolorem!",
             id: "6fbef97a-2812-4f62-aa24-443b2fc6cdb1",
             title: "Ut optio et ab ea id labore."
           },
           %{
             author: "85c08e06-110c-441c-97a9-56afb329ebaa",
             body:
               "Non temporibus voluptatem molestias quis tempora ut quasi quo. Omnis sit et hic nemo a.\n\nPorro aut iusto consequatur illo. Qui similique dignissimos exercitationem aut dolorem? Esse quo magnam cupiditate ullam debitis nobis odit? Voluptates nulla dicta quas harum non sed id molestias.",
             id: "03bc2853-7f43-48af-872c-bfeb8f7af0ed",
             title: "Alias non omnis iusto praesentium veritatis maiores."
           },
           %{
             author: "85c08e06-110c-441c-97a9-56afb329ebaa",
             body:
               "Expedita itaque dignissimos excepturi asperiores? Sunt beatae nostrum atque est. Id rem maiores vel distinctio magni eum. Et similique officiis odio velit ea enim amet vero.\n\nQuia officia blanditiis id consectetur soluta hic voluptatem quas accusantium. Corporis maiores libero tenetur animi a aperiam laborum. Et aut assumenda accusantium velit et ut voluptate. Molestias amet possimus eius laboriosam? Ut alias cupiditate et quia doloremque neque inventore qui.",
             id: "9c0098ab-9fe7-47dc-aa1f-3e0fb568ea96",
             title: "Pariatur sed consequatur hic amet omnis dolor minus."
           },
           %{
             author: "0876a05c-639f-4765-8de2-20f6f164cadd",
             body:
               "Quis in omnis velit nesciunt pariatur et quo est. Porro aliquam libero numquam nostrum officia numquam neque ut! Accusamus esse ut neque nihil veniam.\n\nSunt architecto quis voluptatem et quasi? Fuga nisi vel dolores occaecati sed.",
             id: "b42a2b50-9773-4f1e-9c1e-a1dd02066bf1",
             title: "Et est impedit neque qui consequatur voluptas occaecati commodi."
           },
           %{
             author: "0876a05c-639f-4765-8de2-20f6f164cadd",
             body:
               "Eveniet ut qui doloribus accusamus sed sint error est a. Numquam ipsam quaerat commodi sint esse id qui ut. Similique ducimus sed dicta voluptas animi et sequi debitis esse!\n\nAssumenda molestias ut sit nesciunt ea sed vel totam ipsa! Quo unde ut doloremque quaerat est molestiae. Architecto sit corporis ipsum. Illo omnis nostrum voluptatum. Expedita est assumenda facere animi et aliquid quasi qui.",
             id: "71eb90ee-be8c-4ed4-a71d-cbc0d10bf16e",
             title: "Rem quis aut aperiam temporibus ex aut et ipsa."
           },
           %{
             author: "0876a05c-639f-4765-8de2-20f6f164cadd",
             body:
               "Illo modi quo similique consequatur sapiente repudiandae aut maxime? Aut sit harum numquam. Impedit esse voluptas qui esse ad possimus est! Accusamus dolores ea molestias dicta quia. Facere quas omnis odio voluptas natus sunt.\n\nQuia quidem quisquam iure iure libero dolorem explicabo? Dolor sed consequatur provident culpa at nemo officiis.",
             id: "034d8179-eacb-46d5-9490-bb3ecba32e8f",
             title: "Et voluptatem quod quia ea inventore quasi nesciunt accusantium excepturi?"
           },
           %{
             author: "0876a05c-639f-4765-8de2-20f6f164cadd",
             body:
               "Rerum quis assumenda laudantium aut accusamus quos officiis architecto iure! Fuga iste voluptas error ea ipsam ut qui omnis! Et qui illo laborum quia quae nesciunt perferendis rem? Quas fugiat est facilis assumenda voluptas et cumque iure! Cupiditate dicta et illum est libero molestias perferendis?\n\nEx qui dolores qui rerum autem. Tempore accusantium soluta quia quia nisi distinctio ex veniam! Dolores eos quidem esse sequi. Quos voluptatem repudiandae et eveniet quidem consectetur!",
             id: "aa9ed361-ee55-4eb1-8a42-0d042aa61672",
             title: "Sit sed corporis eos nisi placeat voluptatem consequuntur porro."
           },
           %{
             author: "de5940b5-48d0-44e4-b0f9-1b645cfaef21",
             body:
               "Repellat laborum non hic labore vero commodi et. Est repellendus quia beatae et accusamus magnam! Est deserunt quod facilis perspiciatis minima aut. Ipsam rerum a unde illum in incidunt autem est! Numquam accusantium ut aut nihil rerum.\n\nFugit minus qui harum consequatur omnis aut debitis quia voluptatem. Similique nesciunt architecto aut. Omnis quia soluta consequatur nihil ea. Nihil et ad cupiditate numquam rem. Consequatur odit consequatur similique dolores id voluptates accusamus.",
             id: "d2cbf7f7-62a5-4669-ad83-9a737a3d17cf",
             title: "Quia maxime ad natus."
           },
           %{
             author: "de5940b5-48d0-44e4-b0f9-1b645cfaef21",
             body:
               "Aut est doloremque rerum voluptatibus blanditiis molestiae qui. Dolorum excepturi voluptas ad beatae. Velit sit facilis et numquam doloremque in qui nihil? Rem adipisci non iusto. Modi asperiores soluta non a.\n\nReiciendis ut iste aliquam sit ducimus quo dolor. Placeat quis dolores totam ipsam. Amet et quae corporis quas eaque. Aut non temporibus dolores laboriosam quas atque quae fuga excepturi.",
             id: "e361d8b5-a980-45fe-aa96-66dd5db0974a",
             title: "Adipisci at blanditiis fuga animi maxime fugit doloribus impedit."
           },
           %{
             author: "de5940b5-48d0-44e4-b0f9-1b645cfaef21",
             body:
               "Quo commodi quia quidem quia fuga aut eaque doloremque aliquam. Odio sed eaque tempora cupiditate voluptate. Recusandae aut ut dolores rerum repellendus maxime soluta quia. Et sint voluptates et quas! Consequatur ipsum aut aut optio.\n\nQuo a aut aut et laborum explicabo. Placeat amet quia velit tempora est explicabo.",
             id: "4b279a40-9498-41db-b0ef-7491b4e7f5c5",
             title:
               "Tempora alias vitae itaque rem autem voluptate dolorum perferendis consequatur."
           },
           %{
             author: "de5940b5-48d0-44e4-b0f9-1b645cfaef21",
             body:
               "Veritatis placeat pariatur recusandae alias quaerat aliquid rerum nulla. Ut ducimus eum velit at doloribus consequatur voluptas.\n\nRecusandae quas facere voluptatem mollitia voluptas expedita velit accusantium repudiandae. Ut adipisci odio ratione laboriosam. Nostrum cupiditate totam ad itaque natus. Porro ut et est.",
             id: "8175026c-3020-4647-a4c1-bd4a2fdf55cc",
             title: "Nesciunt qui et enim quibusdam natus sint maxime doloremque eligendi."
           },
           %{
             author: "4e063ede-ce5c-4761-8da5-38588e80ac28",
             body:
               "Occaecati dolore quisquam voluptatem recusandae quidem asperiores et? Harum tenetur nostrum et cum excepturi?\n\nIncidunt unde tempora dolorem fugiat? Ullam earum necessitatibus autem dolorum inventore. Quia voluptatem adipisci est ut ab.",
             id: "315a45eb-6e09-403d-8782-c4101853b70b",
             title: "Voluptate est voluptatem non voluptatem tempore aut."
           },
           %{
             author: "4e063ede-ce5c-4761-8da5-38588e80ac28",
             body:
               "Est dolorem ex aliquam et blanditiis expedita voluptatibus nulla rerum. Non vel ex quis? Ut eveniet iusto optio alias ipsam aut similique fugit minus.\n\nQui quia ut aut. Officia voluptatem iusto sunt animi deleniti esse. Cum qui alias voluptates numquam qui et pariatur officia aut?",
             id: "9d3c8214-acab-4040-8c3f-d5f936aaac29",
             title: "Veritatis beatae deserunt expedita quibusdam!"
           },
           %{
             author: "4e063ede-ce5c-4761-8da5-38588e80ac28",
             body:
               "Provident eius minima ipsa. Magni nulla distinctio corrupti voluptatum vel quasi dolore praesentium! Iure reiciendis quia sapiente autem nihil totam.\n\nEt omnis rem nobis nihil. Nostrum aut id rem.",
             id: "e38d3f59-7bf7-4fbb-bf80-b0a7cbfe1768",
             title: "Soluta optio numquam repellendus!"
           },
           %{
             author: "4e063ede-ce5c-4761-8da5-38588e80ac28",
             body:
               "Et molestias nihil sit vitae! Doloribus voluptates voluptatibus libero porro sunt accusantium. Corporis rerum id quo. Facere a voluptatem et sint at porro sequi et? Vel accusamus inventore praesentium dolorem.\n\nDebitis et esse tempore! Aut libero velit et mollitia temporibus qui ducimus! Numquam fugiat non quo dolorum adipisci molestiae veritatis ex voluptates. Odio quasi ipsa impedit dicta vitae? Quibusdam eum asperiores ducimus maxime aut quod velit repellendus non.",
             id: "efc5859b-5fe4-43f4-aee4-3694be8f6d8c",
             title: "Rem odit beatae doloribus odio esse esse quae ut hic."
           },
           %{
             author: "6e7de56c-1ba1-4b93-9df8-6efc3333bea2",
             body:
               "Veniam in quod rerum non tenetur. Dolore ut magni est qui libero veniam odit sed deserunt.\n\nDolorum vero voluptate assumenda reiciendis quis sit quaerat eum tempore. Quia sed placeat odit rerum facere voluptatem?",
             id: "699e178b-d9b7-42fa-87a9-e40fde5aaa88",
             title: "Dolor nostrum laboriosam sint quia voluptas corporis esse minus dolores."
           },
           %{
             author: "6e7de56c-1ba1-4b93-9df8-6efc3333bea2",
             body:
               "Nihil ipsum perspiciatis eaque voluptates saepe quis illum consectetur. Vel et a inventore ipsam odio dolor laborum excepturi nesciunt? Consequuntur dolor et aut adipisci adipisci omnis veniam quidem cumque.\n\nQuia et voluptatibus eum et. Itaque excepturi est dignissimos quia. Sed vitae id quos similique commodi.",
             id: "a3ddd362-248c-45b3-a62e-4883c79d2fe6",
             title: "Veniam sed illo mollitia ut et sequi nulla."
           },
           %{
             author: "6e7de56c-1ba1-4b93-9df8-6efc3333bea2",
             body:
               "Vel minima deserunt ut eligendi dolorem incidunt ut ea? Deserunt aut ut illum similique natus expedita sit aperiam.\n\nIste ducimus adipisci porro ex similique error id explicabo nihil! Ut quae possimus ad qui mollitia qui autem quaerat quia? Dolorem et aliquid et qui voluptatum est. Facilis distinctio hic sint qui sint sequi.",
             id: "d942c396-66fd-469f-af83-479d7413851b",
             title: "Sapiente quo nihil vitae blanditiis tempore!"
           },
           %{
             author: "6e7de56c-1ba1-4b93-9df8-6efc3333bea2",
             body:
               "Neque non qui est asperiores consequatur enim labore. Libero repudiandae soluta facilis reprehenderit velit earum iste expedita commodi. Ut maiores aperiam odio quam occaecati? Molestiae dolorem odit sint quasi quasi sit quos.\n\nNostrum consequuntur facilis laborum. Consequatur aperiam id distinctio vel? Quibusdam error accusamus ut id est. Ut dolorem dolorem veritatis. Et soluta eum ea ex!",
             id: "c48e80a9-9098-4d48-b8b9-631859c9cc43",
             title: "Dicta corrupti ratione quidem eum error placeat tempore?"
           },
           %{
             author: "635f7586-b6c9-4618-b7b8-527653f5b59b",
             body:
               "Aut veritatis facilis eius eum ipsum delectus aut. Natus ut non recusandae consequatur modi. Quia iste ducimus odit praesentium ut. Nihil voluptatem reiciendis natus dolores quis et delectus. Quibusdam excepturi ex adipisci nostrum mollitia aut ut quidem.\n\nMolestiae excepturi ducimus enim voluptas a in fugit. Id consequatur sed ut doloribus consequatur voluptatem? Dolore explicabo modi impedit facere?",
             id: "d4b81fa2-242c-4194-bc5b-c1a371b12948",
             title: "Quos nemo sapiente reiciendis qui molestiae repellendus in."
           },
           %{
             author: "635f7586-b6c9-4618-b7b8-527653f5b59b",
             body:
               "Recusandae quis aut vel dolores aliquid. Deserunt in ab placeat. Voluptatem cum ea recusandae sed laborum voluptatem rerum voluptatum esse.\n\nCum et aut rerum qui vitae nostrum sunt quia. Quisquam tenetur ut eveniet nemo aut et deserunt et aut. Ut laborum nihil ullam non ut. Et nihil atque fugiat est excepturi vel. Excepturi tenetur a voluptatum cumque saepe ullam id voluptates impedit?",
             id: "f65657ca-fe76-4d65-8bd2-013bc2888063",
             title: "Consequatur voluptatem quia autem ex necessitatibus ea laborum deserunt?"
           },
           %{
             author: "635f7586-b6c9-4618-b7b8-527653f5b59b",
             body:
               "Ab aut fuga ipsam quae? Nostrum ab quia voluptatem minima sint! Quo maiores nesciunt et sint perferendis ea architecto provident praesentium? Id odio reprehenderit sunt aperiam inventore voluptas sit voluptas.\n\nQuia sint non nihil sed? Dolor rem occaecati sequi non et et est natus dolorem. In ex quibusdam alias ut molestias fugit.",
             id: "b07d2797-715f-4cfa-9eb9-b9d1118fda86",
             title: "Et voluptas id et exercitationem voluptatum!"
           },
           %{
             author: "635f7586-b6c9-4618-b7b8-527653f5b59b",
             body:
               "Non beatae nam minus! Qui dolor earum impedit unde. Non quae nihil libero accusamus. Ad nihil quae explicabo saepe doloribus! Explicabo omnis dolor a quis qui dolorum?\n\nNon nisi deleniti consequatur quis nisi culpa voluptatem dicta. Autem placeat qui praesentium necessitatibus voluptates! Accusamus eum saepe quis voluptas sit sapiente nihil in delectus. Sit ad quia amet quaerat quos!",
             id: "31b41088-69d9-4fa6-bc44-88a1152711d7",
             title: "Illum ullam id sit facilis sint est fugit corrupti."
           },
           %{
             author: "9c366479-18c4-437f-8456-60647290d4fa",
             body:
               "Est consequatur aut blanditiis ipsam tempore sit iusto omnis eum. Ab quos est ut dolore quaerat est consequuntur omnis. Nostrum sed ut est aliquam odio molestiae alias!\n\nEarum dolore voluptatem doloremque nisi perspiciatis voluptatem. Earum delectus nesciunt vel? Ea possimus id velit reiciendis perspiciatis! Placeat consequatur atque et rem illo culpa harum!",
             id: "6e7219e2-f813-4fc1-9fe3-80315fce452d",
             title: "Illum nostrum inventore voluptas cupiditate vero!"
           },
           %{
             author: "9c366479-18c4-437f-8456-60647290d4fa",
             body:
               "Rerum quia numquam aut sint? Voluptatem excepturi ipsam voluptatem tempore minima repudiandae tempora libero. Quae officiis minus aut impedit voluptatibus aliquid quibusdam. Qui sit animi ut iure dolorem minima. Similique et quo consequatur?\n\nIllum facere ut eos assumenda modi atque corrupti quos! Exercitationem sit qui qui accusantium maiores modi quia eos excepturi. Libero quas nihil aut aut maiores quaerat.",
             id: "cb4c838d-3b30-438e-b657-c5f344aeedd7",
             title: "Ea non iure necessitatibus labore explicabo aliquid dolore!"
           },
           %{
             author: "9c366479-18c4-437f-8456-60647290d4fa",
             body:
               "Doloribus quod vel dignissimos? Consectetur inventore dolorum maxime voluptatem. Animi et aperiam minus molestias quia aut et dolore. Nemo provident sint modi est pariatur blanditiis quibusdam.\n\nError illum consequatur enim et. Nisi ea rerum quia autem? Dolorem expedita autem ut nemo cupiditate repellendus.",
             id: "942eb98c-05f5-4926-ac8a-bd48ab72ca77",
             title: "Aliquid voluptatem iste quod fugiat?"
           },
           %{
             author: "9c366479-18c4-437f-8456-60647290d4fa",
             body:
               "Rerum ea laboriosam libero? Recusandae est officiis ab sit hic vitae deserunt et cumque! Officiis sunt voluptatem veniam?\n\nMolestiae libero recusandae est sed aspernatur eum. Neque qui ullam vel quas ullam numquam est et. Quia rerum impedit ab eum!",
             id: "71896518-b7be-4a18-8c8b-76d9e67b2836",
             title: "Est nostrum hic enim omnis totam?"
           },
           %{
             author: "24fdc939-b49e-43e8-9faa-c0b49b0529f2",
             body:
               "Assumenda officia fugit iste voluptas velit illo. Dolores omnis possimus quam repellat asperiores aliquid ullam aut mollitia? Eveniet ut quos molestiae rerum et. Aliquam enim dolores ipsam corrupti? Hic iusto quo earum tempora odio voluptas rerum consectetur tempora.\n\nNon voluptatem sint aliquid inventore aut! Ab animi rerum sapiente voluptatem aut hic.",
             id: "fd30241b-1305-41a5-ba1b-e23be719a016",
             title: "Voluptas dolor aut dolore illum eaque et."
           },
           %{
             author: "24fdc939-b49e-43e8-9faa-c0b49b0529f2",
             body:
               "Ut explicabo unde et dolor odit nemo fugit odit. In expedita ut molestiae provident minima est. Eos ea reprehenderit vero cupiditate dolore tenetur. Sapiente labore neque eos.\n\nRepudiandae eum ut odit quisquam quisquam. Repellat consectetur blanditiis qui neque!",
             id: "032bcf62-d62b-46f2-9153-86a44bc9f9a5",
             title: "Corrupti est sunt quidem quia temporibus earum eum nesciunt quis!"
           },
           %{
             author: "24fdc939-b49e-43e8-9faa-c0b49b0529f2",
             body:
               "Sed aliquam quia quidem explicabo eius incidunt facere amet. Omnis saepe numquam architecto. Similique explicabo possimus recusandae earum exercitationem nulla illum odit tempore. Temporibus molestias ad qui.\n\nNobis ut inventore autem neque aut. Dolorem nihil rerum non similique. Ut voluptatem dolor libero et debitis vel distinctio et soluta? Rerum iure alias illum tenetur quod animi non voluptas omnis?",
             id: "f7b23454-9f3e-4490-b1ac-844b0ff18436",
             title: "Omnis non dolorum possimus placeat labore est rerum."
           },
           %{
             author: "24fdc939-b49e-43e8-9faa-c0b49b0529f2",
             body:
               "Totam unde qui accusantium eligendi commodi! Quaerat quasi commodi sint dolore voluptates recusandae aut. Laboriosam qui voluptates sunt soluta voluptates libero.\n\nQuia quaerat illum omnis doloribus ipsa sunt culpa quas. Aut laborum laborum provident.",
             id: "dd36a214-3d3c-4265-bc80-080811089a30",
             title: "Nesciunt ea est optio temporibus doloremque qui labore magnam."
           },
           %{
             author: "f293b449-ab66-42f4-bc4f-2da7927136a5",
             body:
               "Sequi quibusdam ab quas qui quo tenetur. Iure odit commodi et eos repellendus? Eos est quas veniam optio blanditiis quae similique! Consectetur nesciunt eveniet doloribus voluptatibus consectetur molestiae? Repellendus amet rerum exercitationem rerum hic corporis accusamus dolorum!\n\nOmnis quod asperiores labore. Asperiores itaque consequatur exercitationem asperiores fugiat error. Ut unde mollitia aut libero reiciendis itaque?",
             id: "122f3f48-7bc0-478e-8e22-662eb41198dd",
             title: "Blanditiis repellat dolor deserunt rem?"
           },
           %{
             author: "f293b449-ab66-42f4-bc4f-2da7927136a5",
             body:
               "Voluptatem sint quas qui atque ea voluptatum cupiditate numquam? Nihil fuga aspernatur aspernatur rerum. Delectus fugiat vel id! Dolores nihil et tempora magnam omnis quod qui? Ut quia rerum est qui.\n\nQuisquam ut molestiae quia architecto alias totam aut provident quod. Facere fugiat libero ipsam. Odio sint non necessitatibus voluptas officia nesciunt qui?",
             id: "4039bb88-9d3a-4c64-918a-6932a2af9c84",
             title: "Omnis sed consequatur deleniti assumenda et."
           },
           %{
             author: "f293b449-ab66-42f4-bc4f-2da7927136a5",
             body:
               "Eum nulla a autem nostrum tempora soluta officia. Blanditiis temporibus iure tempore voluptas aliquam a!\n\nPossimus ut porro ad at omnis quia. Aut necessitatibus eum nam libero voluptas voluptatum quis consequatur in?",
             id: "65459af1-43ff-4e85-8a98-abad26cb7746",
             title: "Et eveniet totam ut vitae quis odio eius similique?"
           },
           %{
             author: "f293b449-ab66-42f4-bc4f-2da7927136a5",
             body:
               "Rem nihil esse ut est deserunt ut earum deserunt. Ut natus non aut deserunt eos quisquam eveniet architecto! Corporis voluptates veniam voluptas ut.\n\nVelit aperiam perspiciatis debitis. Necessitatibus quas eum temporibus consequuntur odit? Aperiam molestiae deserunt atque voluptates facere fuga ex?",
             id: "6ce99080-bfb4-46ee-8dab-8aa91f5e361d",
             title: "Laboriosam facilis rerum consequatur!"
           },
           %{
             author: "174812e5-2d82-48b8-b052-f57daaf3c6ee",
             body:
               "Esse suscipit nihil maiores nostrum ipsa id et. Eligendi eveniet saepe similique accusamus doloremque soluta natus ex voluptatem.\n\nOfficia corporis ipsum a. Maxime officiis qui earum aliquid velit. Facilis voluptas delectus nihil at occaecati vel facere unde beatae. Ipsum autem odit temporibus mollitia. Eos ratione hic itaque eos sit!",
             id: "787db65d-e864-4279-973a-850fce4ea035",
             title: "Esse ullam pariatur et quis eaque nam consectetur quas mollitia."
           },
           %{
             author: "174812e5-2d82-48b8-b052-f57daaf3c6ee",
             body:
               "Dolores est est qui nihil adipisci! Eaque maxime neque eum molestiae voluptas autem illo et. Sunt harum veniam enim ipsam eligendi! Architecto consequatur consequuntur nihil incidunt voluptas? Tenetur dolores ea debitis ut aut non.\n\nOfficiis fuga maxime est nulla! Repellat illo earum facere impedit aut qui. Sunt nulla aut mollitia dolorem tempore eaque perspiciatis et.",
             id: "feb55fd2-50cb-4b6b-8902-240f22d99857",
             title: "Sed rerum sit facere aut."
           },
           %{
             author: "174812e5-2d82-48b8-b052-f57daaf3c6ee",
             body:
               "Nihil expedita ut odio recusandae pariatur ad velit maiores beatae. Itaque est beatae veritatis corrupti rerum aliquid odio quae voluptatem. Molestiae eum aperiam dolor velit. Et repellendus sed laudantium. Autem nam voluptatum velit id recusandae veniam modi.\n\nNihil aut provident dolorum. Beatae eos minima totam nostrum! Dolor quod reiciendis fugit quas pariatur?",
             id: "b17f93ed-8269-4454-a9ca-1957fe23fc69",
             title: "Alias illo et ut dolores incidunt repellendus quia facilis earum."
           },
           %{
             author: "174812e5-2d82-48b8-b052-f57daaf3c6ee",
             body:
               "Hic natus adipisci aut consectetur delectus quia sit. Deleniti modi velit at ipsam?\n\nAut ipsa similique dolore! Et odit sit omnis quisquam! Adipisci nesciunt reiciendis ea nesciunt dignissimos sit ut illum? Aliquam deserunt a exercitationem tempora quod corporis facere optio voluptatum! Dolorem est velit animi sit non rerum.",
             id: "666cf49f-fce2-4b08-9ef1-ca24ab41bb8e",
             title: "Cum quis non id?"
           }
         ]
         |> Enum.shuffle()

  def users do
    Process.sleep(100)
    @users
  end

  def posts do
    Process.sleep(100)
    @posts
  end

  # Adding comments, but no data is needed.
  def comments do
    Process.sleep(100)
    []
  end
end
