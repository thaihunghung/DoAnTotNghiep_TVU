// UpdatePloById.js

import { useEffect, useState } from "react";
import { Switch } from "@nextui-org/react";
import { Select } from "antd"; // Import Select component from antd
import { Link } from "react-router-dom";
import moment from "moment";
import { useLocation, useNavigate, useParams } from "react-router-dom"; // Import useHistory from react-router-dom
import {
    Button,
    Avatar,
    Input,
    Modal,
    ModalContent,
    ModalHeader,
    ModalBody,
    ModalFooter,
    useDisclosure,
} from "@nextui-org/react";

import { axiosAdmin } from "../../../../../service/AxiosAdmin";

const UpdatePloById = (nav) => {
    
    const { id } = useParams();
    const { setCollapsedNav } = nav;
    const { isOpen, onOpen, onClose } = useDisclosure();
    const [layout, setLayout] = useState("col");
    const [disableRowLayout, setDisableRowLayout] = useState(false);
    const [plo_id, setPlo_id] = useState("");
    const [plo_name, setPlo_name] = useState("");
    const [program_id, setProgram_id] = useState();
    const [programData, setProgramData] = useState([]);

    const [isDelete, setisDelete] = useState(false);

    const navigate = useNavigate();
    const [scrollBehavior, setScrollBehavior] = useState("inside");

    const getPloByID = async () => {
        try {
            const response = await axiosAdmin.get(`/plo/${id}`);
            if (response.data) {
                setPlo_id(response.data.plo_id)
                setPlo_name(response.data.plo_name)
                setProgram_id(response.data.program_id)
                setisDelete(response.data.isDeleted)
            }
            console.log(response.data);
        } catch (error) {
            console.error("lỗi", error);
        }
    }

    const getAllProgram = async () => {
        try {
            const response = await axiosAdmin.get(`/program/isDelete/false`);
            if (response.data) {
                setProgramData(response.data);
            }
            console.log(response);
        } catch (error) {
            console.error("lỗi", error);
        }
    }

    const UpdatePos = async () => {
        try {
            const data = {
                plo_id: plo_id,
                plo_name: plo_name,
                program_id: program_id,
                isDeleted: isDelete
            }
            console.log(data);
            const response = await axiosAdmin.put(`/plo/${id}`, { data: data });
            onClose(navigate("/admin/manage-plo/"))
        } catch (error) {
            console.error("lỗi", error);
        }
    }
    useEffect(() => {
        onOpen()
        getPloByID()
        getAllProgram()
        const handleResize = () => {
            if (window.innerWidth < 1024) {
                setLayout("col");
                setCollapsedNav(true);
                setDisableRowLayout(true);
            } else {
                setDisableRowLayout(false);
                setCollapsedNav(false);
            }
            //console.log(window.innerWidth);
        };
        handleResize();
        window.addEventListener("resize", handleResize);
        return () => {
            window.removeEventListener("resize", handleResize);
        };
    }, []);

    return (
        <div className="flex w-full flex-col justify-center items-start leading-8 p-2 bg-[#f5f5f5]-500">
            <Modal isOpen={isOpen} onClose={() => navigate("/admin/manage-plo/")} scrollBehavior={scrollBehavior}>
                <ModalContent className="m-auto">
                    <ModalHeader className="flex flex-col gap-1">Cập nhật</ModalHeader>
                    <ModalBody>
                        <Input
                            value={plo_id}
                            onValueChange={setPlo_id}
                            className="max-w-xs"
                        />
                        <Switch isSelected={isDelete} onValueChange={setisDelete}>
                            Trạng thái
                        </Switch>
                        <Input
                            value={plo_name}
                            onValueChange={setPlo_name}
                            className="max-w-xs"
                        />
                        <Select
                            defaultValue={"Chọn chương trình"}
                            value={program_id}
                            onChange={setProgram_id}
                            size="large"
                            className="w-full"
                        >
                            {programData.map((program) => (
                                <Select.Option
                                    key={program.id}
                                    value={program.id}
                                >
                                    {program.program_name}
                                </Select.Option>
                            ))}
                        </Select>
                    </ModalBody>
                    <ModalFooter>
                        <Button
                            color="danger"
                            radius="sm"
                            as={Link}
                            to="/admin/manage-plo/"
                            onClick={onClose}
                        >
                            Close
                        </Button>
                        <Button onClick={UpdatePos} color="primary" radius="sm">
                            <span className="font-medium">Cập nhật</span>
                        </Button>
                    </ModalFooter>
                </ModalContent>
            </Modal>
            <div>
                <div className="w-fit flex border justify-start text-base font-bold rounded-lg">
                    <Link to={"/admin/manage-plo"}>
                        <div className="p-5 hover:bg-slate-600 hover:text-white">
                            DS PLO
                        </div>
                    </Link>
                    <Link to={"/admin/manage-plo/store"}>
                        <div className="p-5 hover:bg-slate-600 hover:text-white">
                            Kho lưu trữ
                        </div>
                    </Link>
                    <Link to={"/admin/manage-plo/update"}>
                        <div className="p-5 hover:bg-slate-600 hover:text-white">
                            update
                        </div>
                    </Link>
                    <Link to={"/admin/manage-plo/create"}>
                        <div className="p-5 hover:bg-slate-600 hover:text-white">
                            Tạo PLO
                        </div>
                    </Link>
                </div>
            </div>
        </div>
    );
}

export default UpdatePloById;
